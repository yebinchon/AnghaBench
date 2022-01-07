
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_6__ {size_t i_pieces_nbr; } ;
struct TYPE_9__ {TYPE_2__* ps_pieces; TYPE_1__ s_allocated; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_7__ {scalar_t__ i_original_row; int i_original_col; int i_left_shape; int i_right_shape; int i_top_shape; int i_btm_shape; } ;



void puzzle_set_left_top_shapes( filter_t *p_filter)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    for (uint16_t i_pce_B=0; i_pce_B < p_sys->s_allocated.i_pieces_nbr; i_pce_B++)

        for (uint16_t i_pce_A=0; i_pce_A < p_sys->s_allocated.i_pieces_nbr; i_pce_A++)
        {
            if ( ( p_sys->ps_pieces[i_pce_A].i_original_row == p_sys->ps_pieces[i_pce_B].i_original_row )
                  && ( p_sys->ps_pieces[i_pce_A].i_original_col == p_sys->ps_pieces[i_pce_B].i_original_col-1 ) )

                p_sys->ps_pieces[i_pce_B].i_left_shape = (p_sys->ps_pieces[i_pce_A].i_right_shape - 6 ) ^ 0x01;

            if ( ( p_sys->ps_pieces[i_pce_A].i_original_row == p_sys->ps_pieces[i_pce_B].i_original_row - 1 )
                  && ( p_sys->ps_pieces[i_pce_A].i_original_col == p_sys->ps_pieces[i_pce_B].i_original_col ) )




                p_sys->ps_pieces[i_pce_B].i_top_shape = (p_sys->ps_pieces[i_pce_A].i_btm_shape - 2 ) ^ 0x01;
        }
}
