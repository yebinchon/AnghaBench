
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_18__ {TYPE_7__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_19__ {int i_flags; void* i_pts; void* i_dts; } ;
typedef TYPE_6__ block_t ;
struct TYPE_16__ {TYPE_10__* p_chain; } ;
struct TYPE_15__ {TYPE_10__* p_chain; } ;
struct TYPE_14__ {TYPE_10__* p_chain; } ;
struct TYPE_17__ {int b_has_visible_frame; void* pts; void* dts; TYPE_3__ post; TYPE_2__ frame; TYPE_1__ pre; } ;
struct TYPE_20__ {scalar_t__ i_seen; TYPE_4__ tu; int i_next_block_flags; } ;
typedef TYPE_7__ av1_sys_t ;
struct TYPE_21__ {int post; int frame; int pre; } ;
struct TYPE_13__ {int i_flags; } ;


 int BLOCK_FLAG_DROP ;
 int INITQ (int ) ;
 void* VLC_TICK_INVALID ;
 int block_ChainLastAppend (TYPE_6__***,TYPE_10__*) ;
 TYPE_8__ tu ;

__attribute__((used)) static block_t * OutputQueues(decoder_t *p_dec, bool b_valid)
{
    av1_sys_t *p_sys = p_dec->p_sys;
    block_t *p_output = ((void*)0);
    block_t **pp_output_last = &p_output;
    uint32_t i_flags = 0;

    if(p_sys->tu.pre.p_chain)
    {
        block_ChainLastAppend(&pp_output_last, p_sys->tu.pre.p_chain);
        INITQ(tu.pre);
    }

    if(p_sys->tu.frame.p_chain)
    {
        i_flags |= p_sys->tu.frame.p_chain->i_flags;
        block_ChainLastAppend(&pp_output_last, p_sys->tu.frame.p_chain);
        INITQ(tu.frame);
    }

    if(p_sys->tu.post.p_chain)
    {
        block_ChainLastAppend(&pp_output_last, p_sys->tu.post.p_chain);
        INITQ(tu.post);
    }

    if(p_output)
    {
        p_output->i_dts = p_sys->tu.dts;
        p_output->i_pts = p_sys->tu.pts;
        p_output->i_flags |= i_flags;
        if(!b_valid)
            p_output->i_flags |= BLOCK_FLAG_DROP;
        else
        {
            p_output->i_flags |= p_sys->i_next_block_flags;
            p_sys->i_next_block_flags = 0;
        }
    }

    p_sys->tu.b_has_visible_frame = 0;
    p_sys->tu.dts = VLC_TICK_INVALID;
    p_sys->tu.pts = VLC_TICK_INVALID;
    p_sys->i_seen = 0;

    return p_output;
}
