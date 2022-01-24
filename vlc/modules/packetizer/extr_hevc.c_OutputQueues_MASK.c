#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {TYPE_5__* p_chain; } ;
struct TYPE_13__ {TYPE_5__* p_chain; } ;
struct TYPE_12__ {TYPE_5__* p_chain; } ;
struct TYPE_15__ {scalar_t__ sets; TYPE_3__ post; int /*<<< orphan*/  pts; int /*<<< orphan*/  dts; TYPE_2__ frame; TYPE_1__ pre; scalar_t__ b_recovery_point; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_16__ {int i_buffer; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; struct TYPE_16__* p_next; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_DROP ; 
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 scalar_t__ HEVC_NAL_AUD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__***,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  frame ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  post ; 
 int /*<<< orphan*/  pre ; 

__attribute__((used)) static block_t * FUNC5(decoder_sys_t *p_sys, bool b_valid)
{
    block_t *p_output = NULL;
    block_t **pp_output_last = &p_output;
    uint32_t i_flags = 0; /* Because block_ChainGather does not merge flags or times */

    if(p_sys->pre.p_chain)
    {
        i_flags |= p_sys->pre.p_chain->i_flags;
        if(p_sys->b_recovery_point && p_sys->sets != SENT)
        {
            if(p_sys->pre.p_chain->i_buffer >= 5 &&
               FUNC4(&p_sys->pre.p_chain->p_buffer[4]) == HEVC_NAL_AUD)
            {
                block_t *p_au = p_sys->pre.p_chain;
                p_sys->pre.p_chain = p_sys->pre.p_chain->p_next;
                p_au->p_next = NULL;
                FUNC2(&pp_output_last, p_au);
            }
            FUNC2(&pp_output_last, FUNC0(p_sys));
        }
        if(p_sys->pre.p_chain)
            FUNC2(&pp_output_last, p_sys->pre.p_chain);
        FUNC1(pre);
    }

    if(p_sys->frame.p_chain)
    {
        i_flags |= p_sys->frame.p_chain->i_flags;
        FUNC2(&pp_output_last, p_sys->frame.p_chain);
        p_output->i_dts = FUNC3(&p_sys->dts);
        p_output->i_pts = p_sys->pts;
        FUNC1(frame);
    }

    if(p_sys->post.p_chain)
    {
        i_flags |= p_sys->post.p_chain->i_flags;
        FUNC2(&pp_output_last, p_sys->post.p_chain);
        FUNC1(post);
    }

    if(p_output)
    {
        p_output->i_flags |= i_flags;
        if(!b_valid)
            p_output->i_flags |= BLOCK_FLAG_DROP;
    }

    return p_output;
}