include <reed/reed_2_0_0.scad>
include <variants-reed-pipe.scad>

$fn=100;

max_in_a_row = 2;

for (i = [0:len(variants_pipe)-1]){
    v = variants_pipe[i];
    echo(str("variant: ", v));
    translate([(i%max_in_a_row)*v[1]*0.8, (i/max_in_a_row)*v[1]*0.8, 0]){
        reed2_leaf(v[0], v[1], v[2], v[3], variants_pipe_leaf_stem_heigth_coeff_init, variants_pipe_leaf_stem_heigth_coeff);
    }
}
