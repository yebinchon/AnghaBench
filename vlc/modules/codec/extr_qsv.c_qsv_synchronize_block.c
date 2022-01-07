
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef scalar_t__ mfxStatus ;
struct TYPE_18__ {int i_frame_rate; int i_frame_rate_base; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_20__ {TYPE_2__ fmt_in; TYPE_4__* p_sys; } ;
typedef TYPE_3__ encoder_t ;
struct TYPE_21__ {scalar_t__ last_dts; int session; } ;
typedef TYPE_4__ encoder_sys_t ;
struct TYPE_22__ {scalar_t__ i_buffer; scalar_t__ i_dts; scalar_t__ i_length; int p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_17__ {scalar_t__ DataLength; scalar_t__ DataOffset; int DecodeTimeStamp; int FrameType; } ;
struct TYPE_23__ {TYPE_13__ bs; TYPE_5__* block; int * syncp; } ;
typedef TYPE_6__ async_task_t ;


 scalar_t__ MFXVideoCORE_SyncOperation (int ,int ,int ) ;
 scalar_t__ MFX_ERR_NONE ;
 scalar_t__ MFX_WRN_IN_EXECUTION ;
 int QSV_SYNCPOINT_WAIT ;
 int msg_Dbg (TYPE_3__*,char*) ;
 int msg_Err (TYPE_3__*,char*,scalar_t__) ;
 int qsv_set_block_flags (TYPE_5__*,int ) ;
 int qsv_set_block_ts (TYPE_3__*,TYPE_4__*,TYPE_5__*,TYPE_13__*) ;
 scalar_t__ vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static block_t *qsv_synchronize_block(encoder_t *enc, async_task_t *task)
{
    encoder_sys_t *sys = enc->p_sys;
    mfxStatus sts;


    do {
        sts = MFXVideoCORE_SyncOperation(sys->session, *task->syncp, QSV_SYNCPOINT_WAIT);
    } while (sts == MFX_WRN_IN_EXECUTION);
    if (sts != MFX_ERR_NONE) {
        msg_Err(enc, "SyncOperation failed (%d), outputting garbage data. "
                "Updating your drivers and/or changing the encoding settings might resolve this", sts);
        return ((void*)0);
    }
    if (task->bs.DataLength == 0)
    {
        msg_Dbg(enc, "Empty encoded block");
        return ((void*)0);
    }
    block_t *block = task->block;
    block->i_buffer = task->bs.DataLength;
    block->p_buffer += task->bs.DataOffset;

    qsv_set_block_ts(enc, sys, block, &task->bs);
    qsv_set_block_flags(block, task->bs.FrameType);






    block->i_length = vlc_tick_from_samples( enc->fmt_in.video.i_frame_rate_base,
                                             enc->fmt_in.video.i_frame_rate );


    if (task->bs.DecodeTimeStamp < -10000)
        block->i_dts = sys->last_dts + block->i_length;
    sys->last_dts = block->i_dts;

    task->bs.DataLength = task->bs.DataOffset = 0;
    return block;
}
