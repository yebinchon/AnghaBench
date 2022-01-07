
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_10__ {scalar_t__ i_queue; scalar_t__ i_reorder_depth; TYPE_3__* p_queue; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_11__ {scalar_t__ i_pts; struct TYPE_11__* p_next; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ CC_MAX_REORDER_SIZE ;
 int Pop (TYPE_1__*,int) ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (int ) ;
 int msg_Info (TYPE_1__*,char*,scalar_t__) ;
 int msg_Warn (TYPE_1__*,char*) ;

__attribute__((used)) static void Push( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->i_queue >= CC_MAX_REORDER_SIZE )
    {
        block_Release( Pop( p_dec, 1 ) );
        msg_Warn( p_dec, "Trashing a CC entry" );
    }

    block_t **pp_block;

    for( pp_block = &p_sys->p_queue; *pp_block ; pp_block = &((*pp_block)->p_next) )
    {
        if( p_block->i_pts == VLC_TICK_INVALID || (*pp_block)->i_pts == VLC_TICK_INVALID )
            continue;
        if( p_block->i_pts < (*pp_block)->i_pts )
        {
            if( p_sys->i_reorder_depth > 0 &&
                p_sys->i_queue < p_sys->i_reorder_depth &&
                pp_block == &p_sys->p_queue )
            {
                msg_Info( p_dec, "Increasing reorder depth to %d", ++p_sys->i_reorder_depth );
            }
            break;
        }
    }

    p_block->p_next = *pp_block ? *pp_block : ((void*)0);
    *pp_block = p_block;
    p_sys->i_queue++;
}
