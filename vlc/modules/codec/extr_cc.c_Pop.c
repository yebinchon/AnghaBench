
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_7__ {scalar_t__ i_queue; scalar_t__ i_reorder_depth; TYPE_3__* p_queue; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ CC_MAX_REORDER_SIZE ;

__attribute__((used)) static block_t *Pop( decoder_t *p_dec, bool b_forced )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_block;

     if( p_sys->i_queue == 0 )
         return ((void*)0);

     if( !b_forced && p_sys->i_queue < CC_MAX_REORDER_SIZE )
     {
        if( p_sys->i_queue < p_sys->i_reorder_depth || p_sys->i_reorder_depth == 0 )
            return ((void*)0);
     }


     p_block = p_sys->p_queue;
     p_sys->p_queue = p_block->p_next;
     p_block->p_next = ((void*)0);
     p_sys->i_queue--;

    return p_block;
}
