#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ mfxStatus ;
struct TYPE_18__ {int /*<<< orphan*/  i_frame_rate; int /*<<< orphan*/  i_frame_rate_base; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_20__ {TYPE_2__ fmt_in; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ encoder_t ;
struct TYPE_21__ {scalar_t__ last_dts; int /*<<< orphan*/  session; } ;
typedef  TYPE_4__ encoder_sys_t ;
struct TYPE_22__ {scalar_t__ i_buffer; scalar_t__ i_dts; scalar_t__ i_length; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_17__ {scalar_t__ DataLength; scalar_t__ DataOffset; int DecodeTimeStamp; int /*<<< orphan*/  FrameType; } ;
struct TYPE_23__ {TYPE_13__ bs; TYPE_5__* block; int /*<<< orphan*/ * syncp; } ;
typedef  TYPE_6__ async_task_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MFX_ERR_NONE ; 
 scalar_t__ MFX_WRN_IN_EXECUTION ; 
 int /*<<< orphan*/  QSV_SYNCPOINT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,TYPE_5__*,TYPE_13__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC6(encoder_t *enc, async_task_t *task)
{
    encoder_sys_t *sys = enc->p_sys;
    mfxStatus sts;

    /* Synchronize and fill block_t. If the SyncOperation fails we leak :-/ (or we can segfault, ur choice) */
    do {
        sts = FUNC0(sys->session, *task->syncp, QSV_SYNCPOINT_WAIT);
    } while (sts == MFX_WRN_IN_EXECUTION);
    if (sts != MFX_ERR_NONE) {
        FUNC2(enc, "SyncOperation failed (%d), outputting garbage data. "
                "Updating your drivers and/or changing the encoding settings might resolve this", sts);
        return NULL;
    }
    if (task->bs.DataLength == 0)
    {
        FUNC1(enc, "Empty encoded block");
        return NULL;
    }
    block_t *block = task->block;
    block->i_buffer = task->bs.DataLength;
    block->p_buffer += task->bs.DataOffset;

    FUNC4(enc, sys, block, &task->bs);
    FUNC3(block, task->bs.FrameType);

    /* msg_Dbg(enc, "block->i_pts = %lld, block->i_dts = %lld", block->i_pts, block->i_dts); */
    /* msg_Dbg(enc, "FrameType = %#.4x, TimeStamp = %lld (pts %lld), DecodeTimeStamp = %lld syncp=0x%x",*/
    /*         task->bs.FrameType, task->bs.TimeStamp, block->i_pts, task->bs.DecodeTimeStamp, *task->syncp); */

    /* Copied from x264.c: This isn't really valid for streams with B-frames */
    block->i_length = FUNC5( enc->fmt_in.video.i_frame_rate_base,
                                             enc->fmt_in.video.i_frame_rate );

    // Buggy DTS (value comes from experiments)
    if (task->bs.DecodeTimeStamp < -10000)
        block->i_dts = sys->last_dts + block->i_length;
    sys->last_dts = block->i_dts;

    task->bs.DataLength = task->bs.DataOffset = 0;
    return block;
}