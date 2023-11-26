include <reed/reed.scad>
include <variants.scad>


$fn=40;

// render(){
//     $fn=100;
// }



max_in_a_row = 7;

for (i = [0:len(variants)-1]){
    v = variants[i];
    echo(str("variant: ", v));
    translate([(i%max_in_a_row)*12, (floor(i/max_in_a_row))*12, 0]){
        reed(v[0], v[1], v[2], v[3], v[4], v[5], v[6]);
        /*translate([0, 10, -20])*/ color("red")  leaf(v[0], v[1], v[2], v[3], v[4], v[5], v[6]);
    }
}