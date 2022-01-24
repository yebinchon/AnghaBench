#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ date; scalar_t__ b_top_field_first; scalar_t__ b_progressive; } ;
typedef  TYPE_7__ picture_t ;
struct TYPE_29__ {TYPE_9__* p_sys; } ;
typedef  TYPE_8__ encoder_t ;
struct TYPE_24__ {int /*<<< orphan*/  PicStruct; } ;
struct TYPE_22__ {TYPE_3__ FrameInfo; } ;
struct TYPE_23__ {TYPE_1__ mfx; } ;
struct TYPE_30__ {scalar_t__ offset_pts; TYPE_2__ params; int /*<<< orphan*/  input_pool; } ;
typedef  TYPE_9__ encoder_sys_t ;
struct TYPE_26__ {int PitchLow; scalar_t__ Y; scalar_t__ UV; int /*<<< orphan*/  TimeStamp; } ;
struct TYPE_27__ {TYPE_5__ Data; TYPE_3__ Info; } ;
struct TYPE_25__ {scalar_t__ p_pixels; int i_pitch; int i_lines; } ;
struct TYPE_21__ {TYPE_4__* p; } ;
struct TYPE_20__ {TYPE_6__ surface; TYPE_14__* pic; scalar_t__ used; } ;
typedef  TYPE_10__ QSVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  MFX_PICSTRUCT_FIELD_BFF ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_FIELD_TFF ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_PROGRESSIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_9__*,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*,TYPE_7__*) ; 
 TYPE_14__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(encoder_t *enc, picture_t *pic, QSVFrame **new_frame)
{
    encoder_sys_t *sys = enc->p_sys;
    QSVFrame *qf = NULL;
    int ret = FUNC2(sys, &qf);
    if (ret != VLC_SUCCESS) {
        FUNC3(enc, "Unable to find an unlocked surface in the pool");
        return ret;
    }

    qf->pic = FUNC5( sys->input_pool );
    if (FUNC6(!qf->pic))
    {
        FUNC3(enc, "Unable to find an unlocked surface in the pool");
        qf->used = 0;
        return ret;
    }
    FUNC4( qf->pic, pic );

    FUNC1(qf->pic->p[0].p_pixels + (qf->pic->p[0].i_pitch * qf->pic->p[0].i_lines) == qf->pic->p[1].p_pixels);

    qf->surface.Info = sys->params.mfx.FrameInfo;

    // Specify picture structure at runtime.
    if (pic->b_progressive)
        qf->surface.Info.PicStruct = MFX_PICSTRUCT_PROGRESSIVE;
    else if (pic->b_top_field_first)
        qf->surface.Info.PicStruct = MFX_PICSTRUCT_FIELD_TFF;
    else
        qf->surface.Info.PicStruct = MFX_PICSTRUCT_FIELD_BFF;

    //qf->surface.Data.Pitch = QSV_ALIGN(16, qf->surface.Info.Width);

    qf->surface.Data.PitchLow  = qf->pic->p[0].i_pitch;
    qf->surface.Data.Y         = qf->pic->p[0].p_pixels;
    qf->surface.Data.UV        = qf->pic->p[1].p_pixels;

    qf->surface.Data.TimeStamp = FUNC0(pic->date - sys->offset_pts);

    *new_frame = qf;

    return VLC_SUCCESS;
}