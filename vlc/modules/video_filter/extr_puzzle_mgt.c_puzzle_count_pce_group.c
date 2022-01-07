
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int32_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_7__ {int i_pieces_nbr; } ;
struct TYPE_9__ {TYPE_1__* ps_pieces; int * pi_group_qty; TYPE_2__ s_allocated; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_6__ {size_t i_group_ID; } ;


 int memset (int *,int ,int) ;

void puzzle_count_pce_group( filter_t *p_filter) {
    filter_sys_t *p_sys = p_filter->p_sys;

    memset ( p_sys->pi_group_qty, 0, sizeof( int32_t ) * (p_sys->s_allocated.i_pieces_nbr) );
    for (uint32_t i_pce = 0; i_pce < p_sys->s_allocated.i_pieces_nbr; i_pce++)
        p_sys->pi_group_qty[p_sys->ps_pieces[i_pce].i_group_ID]++;
}
