
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_6__ {size_t i_pieces_nbr; } ;
struct TYPE_8__ {TYPE_5__* pi_group_qty; TYPE_5__* ps_pieces_tmp; TYPE_5__* pi_order; TYPE_5__* ps_pieces; TYPE_1__ s_allocated; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_9__ {struct TYPE_9__* ps_piece_in_plane; } ;


 int free (TYPE_5__*) ;

void puzzle_free_ps_pieces( filter_t *p_filter)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if (p_sys->ps_pieces != ((void*)0)) {
        for (uint32_t i_pce = 0; i_pce < p_sys->s_allocated.i_pieces_nbr; i_pce++)
            free( p_sys->ps_pieces[i_pce].ps_piece_in_plane );
        free( p_sys->ps_pieces );
    }
    p_sys->ps_pieces = ((void*)0);

    free( p_sys->pi_order );
    p_sys->pi_order = ((void*)0);

    free( p_sys->ps_pieces_tmp );
    p_sys->ps_pieces_tmp = ((void*)0);

    free( p_sys->pi_group_qty );
    p_sys->pi_group_qty = ((void*)0);

    return;
}
