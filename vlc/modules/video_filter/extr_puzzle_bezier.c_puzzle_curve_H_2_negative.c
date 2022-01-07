
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int f_y; int f_x; } ;
typedef TYPE_1__ point_t ;


 TYPE_1__* malloc (int) ;

point_t *puzzle_curve_H_2_negative(uint8_t i_pts_nbr, point_t *ps_pt)
{
    if (ps_pt == ((void*)0))
        return ((void*)0);

    point_t *ps_new_pt = malloc( sizeof( point_t ) * (3 * (i_pts_nbr-1) + 1) );
    if (ps_new_pt == ((void*)0))
        return ((void*)0);

    for (uint8_t i=0; i < (3 * (i_pts_nbr-1) + 1); i++) {
        ps_new_pt[i].f_x = ps_pt[i].f_x;
        ps_new_pt[i].f_y = -ps_pt[i].f_y;
    }

    return ps_new_pt;
}
