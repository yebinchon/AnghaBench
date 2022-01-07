
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {float f_y; float f_x; } ;
typedef TYPE_1__ point_t ;
typedef int int8_t ;


 float __MIN (float,float) ;
 float bezier_val (TYPE_1__*,float,int,int ) ;
 int floor (float) ;
 int x ;
 int y ;

void puzzle_get_min_bezier(float *f_min_curve_x, float *f_min_curve_y, float f_x_ratio, float f_y_ratio, point_t *ps_pt, uint8_t i_pts_nbr)
{
    *f_min_curve_y = ps_pt[0].f_y * f_y_ratio;
    *f_min_curve_x = ps_pt[0].f_x * f_x_ratio;

    for (float f_t = 0; f_t <= i_pts_nbr - 1; f_t += 0.1 ) {
        int8_t i_main_t = floor(f_t);
        if ( i_main_t == i_pts_nbr - 1 )
            i_main_t = i_pts_nbr - 2;
        float f_sub_t = f_t - i_main_t;

        *f_min_curve_x = __MIN(*f_min_curve_x,bezier_val(ps_pt,f_sub_t,i_main_t,x) * f_x_ratio);
        *f_min_curve_y = __MIN(*f_min_curve_y,bezier_val(ps_pt,f_sub_t,i_main_t,y) * f_y_ratio);
    }
}
