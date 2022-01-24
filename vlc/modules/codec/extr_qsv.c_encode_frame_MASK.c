#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_20__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_18__ ;
typedef  struct TYPE_22__   TYPE_13__ ;

/* Type definitions */
struct TYPE_26__ {scalar_t__ date; } ;
typedef  TYPE_2__ picture_t ;
typedef  scalar_t__ mfxStatus ;
typedef  int /*<<< orphan*/  mfxFrameSurface1 ;
struct TYPE_27__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ encoder_t ;
struct TYPE_24__ {int BufferSizeInKB; } ;
struct TYPE_25__ {TYPE_1__ mfx; } ;
struct TYPE_28__ {TYPE_20__ params; int /*<<< orphan*/  session; int /*<<< orphan*/  busy_warn_counter; scalar_t__ offset_pts; } ;
typedef  TYPE_4__ encoder_sys_t ;
struct TYPE_22__ {int /*<<< orphan*/  Data; int /*<<< orphan*/  MaxLength; } ;
struct TYPE_29__ {TYPE_18__* block; void* syncp; TYPE_13__ bs; } ;
typedef  TYPE_5__ async_task_t ;
struct TYPE_30__ {int /*<<< orphan*/  surface; } ;
struct TYPE_23__ {int /*<<< orphan*/  p_buffer; int /*<<< orphan*/  i_buffer; } ;
typedef  TYPE_6__ QSVFrame ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_13__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_20__*) ; 
 scalar_t__ MFX_ERR_MEMORY_ALLOC ; 
 scalar_t__ MFX_ERR_MORE_DATA ; 
 scalar_t__ MFX_ERR_NONE ; 
 scalar_t__ MFX_WRN_DEVICE_BUSY ; 
 scalar_t__ MFX_WRN_IN_EXECUTION ; 
 int /*<<< orphan*/  QSV_BUSYWAIT_TIME ; 
 scalar_t__ VLC_SUCCESS ; 
 TYPE_18__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_18__*) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_2__*,TYPE_6__**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static async_task_t *FUNC13(encoder_t *enc, picture_t *pic)
{
    encoder_sys_t *sys = enc->p_sys;
    mfxStatus sts = MFX_ERR_MEMORY_ALLOC;
    QSVFrame *qsv_frame = NULL;
    mfxFrameSurface1 *surf = NULL;
    async_task_t *task = FUNC4(1, sizeof(*task));
    if (FUNC11(task == NULL))
        goto done;

    if (pic) {
        /* To avoid qsv -> vlc timestamp conversion overflow, we use timestamp relative
           to the first picture received. That way, vlc will overflow before us.
           (Thanks to funman for the idea) */
        if (!sys->offset_pts) // First frame
            sys->offset_pts = pic->date;

        if (FUNC10(enc, pic, &qsv_frame) != VLC_SUCCESS)
        {
            FUNC9(enc, "Unable to find an unlocked surface in the pool");
            goto done;
        }
    }

    if (!(task->syncp = FUNC4(1, sizeof(*task->syncp)))) {
        FUNC8(enc, "Unable to allocate syncpoint for encoder output");
        goto done;
    }

    /* Allocate block_t and prepare mfxBitstream for encoder */
    if (!(task->block = FUNC2(sys->params.mfx.BufferSizeInKB * 1000))) {
        FUNC8(enc, "Unable to allocate block for encoder output");
        goto done;
    }
    FUNC6(&task->bs, 0, sizeof(task->bs));
    task->bs.MaxLength = task->block->i_buffer;
    task->bs.Data = task->block->p_buffer;

    if (qsv_frame) {
        surf = &qsv_frame->surface;
    }

    for (;;) {
        sts = FUNC0(sys->session, 0, surf, &task->bs, task->syncp);
        if (sts != MFX_WRN_DEVICE_BUSY && sts != MFX_WRN_IN_EXECUTION)
            break;
        if (sys->busy_warn_counter++ % 16 == 0)
            FUNC7(enc, "Device is busy, let's wait and retry %d", sts);
        if (sts == MFX_WRN_DEVICE_BUSY)
            FUNC12(QSV_BUSYWAIT_TIME);
    }

    // msg_Dbg(enc, "Encode async status: %d, Syncpoint = %tx", sts, (ptrdiff_t)task->syncp);

    if (sts == MFX_ERR_MORE_DATA)
        if (pic)
            FUNC7(enc, "Encoder feeding phase, more data is needed.");
        else
            FUNC7(enc, "Encoder is empty");
    else if (sts < MFX_ERR_NONE) {
        FUNC8(enc, "Encoder not ready or error (%d), trying a reset...", sts);
        FUNC1(sys->session, &sys->params);
    }

done:
    if (sts < MFX_ERR_NONE || (task != NULL && !task->syncp)) {
        if (task->block != NULL)
            FUNC3(task->block);
        FUNC5(task);
        task = NULL;
    }
    return task;
}