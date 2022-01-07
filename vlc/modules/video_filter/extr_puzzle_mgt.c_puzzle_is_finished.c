
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {size_t i_pieces_nbr; } ;
struct TYPE_5__ {TYPE_1__ s_allocated; } ;
typedef TYPE_2__ filter_sys_t ;



bool puzzle_is_finished( filter_sys_t *p_sys, int32_t *pi_pce_lst )
{
    for( uint32_t i = 0; i < p_sys->s_allocated.i_pieces_nbr; i++ )
        if( (int32_t)i != pi_pce_lst[i] )
            return 0;

    return 1;
}
