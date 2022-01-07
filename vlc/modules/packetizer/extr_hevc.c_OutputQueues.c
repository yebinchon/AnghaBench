
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {TYPE_5__* p_chain; } ;
struct TYPE_13__ {TYPE_5__* p_chain; } ;
struct TYPE_12__ {TYPE_5__* p_chain; } ;
struct TYPE_15__ {scalar_t__ sets; TYPE_3__ post; int pts; int dts; TYPE_2__ frame; TYPE_1__ pre; scalar_t__ b_recovery_point; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_16__ {int i_buffer; int i_flags; int i_pts; int i_dts; struct TYPE_16__* p_next; int * p_buffer; } ;
typedef TYPE_5__ block_t ;


 int BLOCK_FLAG_DROP ;
 TYPE_5__* GetXPSCopy (TYPE_4__*) ;
 scalar_t__ HEVC_NAL_AUD ;
 int INITQ (int ) ;
 scalar_t__ SENT ;
 int block_ChainLastAppend (TYPE_5__***,TYPE_5__*) ;
 int date_Get (int *) ;
 int frame ;
 scalar_t__ hevc_getNALType (int *) ;
 int post ;
 int pre ;

__attribute__((used)) static block_t * OutputQueues(decoder_sys_t *p_sys, bool b_valid)
{
    block_t *p_output = ((void*)0);
    block_t **pp_output_last = &p_output;
    uint32_t i_flags = 0;

    if(p_sys->pre.p_chain)
    {
        i_flags |= p_sys->pre.p_chain->i_flags;
        if(p_sys->b_recovery_point && p_sys->sets != SENT)
        {
            if(p_sys->pre.p_chain->i_buffer >= 5 &&
               hevc_getNALType(&p_sys->pre.p_chain->p_buffer[4]) == HEVC_NAL_AUD)
            {
                block_t *p_au = p_sys->pre.p_chain;
                p_sys->pre.p_chain = p_sys->pre.p_chain->p_next;
                p_au->p_next = ((void*)0);
                block_ChainLastAppend(&pp_output_last, p_au);
            }
            block_ChainLastAppend(&pp_output_last, GetXPSCopy(p_sys));
        }
        if(p_sys->pre.p_chain)
            block_ChainLastAppend(&pp_output_last, p_sys->pre.p_chain);
        INITQ(pre);
    }

    if(p_sys->frame.p_chain)
    {
        i_flags |= p_sys->frame.p_chain->i_flags;
        block_ChainLastAppend(&pp_output_last, p_sys->frame.p_chain);
        p_output->i_dts = date_Get(&p_sys->dts);
        p_output->i_pts = p_sys->pts;
        INITQ(frame);
    }

    if(p_sys->post.p_chain)
    {
        i_flags |= p_sys->post.p_chain->i_flags;
        block_ChainLastAppend(&pp_output_last, p_sys->post.p_chain);
        INITQ(post);
    }

    if(p_output)
    {
        p_output->i_flags |= i_flags;
        if(!b_valid)
            p_output->i_flags |= BLOCK_FLAG_DROP;
    }

    return p_output;
}
