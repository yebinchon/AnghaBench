#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct aom_codec_dec_cfg {int allow_lowbitdepth; int /*<<< orphan*/  threads; } ;
struct TYPE_11__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int /*<<< orphan*/  color_range; int /*<<< orphan*/  space; int /*<<< orphan*/  transfer; int /*<<< orphan*/  primaries; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_12__ {scalar_t__ i_codec; TYPE_3__ video; } ;
struct TYPE_9__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int /*<<< orphan*/  color_range; int /*<<< orphan*/  space; int /*<<< orphan*/  transfer; int /*<<< orphan*/  primaries; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_10__ {TYPE_1__ video; int /*<<< orphan*/  i_codec; } ;
struct TYPE_13__ {TYPE_4__ fmt_in; TYPE_2__ fmt_out; int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_decode; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_14__ {int /*<<< orphan*/  ctx; scalar_t__ i_next_frame_priv; } ;
typedef  TYPE_6__ decoder_sys_t ;
typedef  int /*<<< orphan*/  aom_codec_iface_t ;

/* Variables and functions */
 scalar_t__ AOM_CODEC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  Decode ; 
 int /*<<< orphan*/  FlushDecoder ; 
 scalar_t__ VLC_CODEC_AV1 ; 
 int /*<<< orphan*/  VLC_CODEC_I420 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  aom_codec_av1_dx_algo ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,struct aom_codec_dec_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 TYPE_6__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(vlc_object_t *p_this)
{
    decoder_t *dec = (decoder_t *)p_this;
    const aom_codec_iface_t *iface;
    int av_version;

    if (dec->fmt_in.i_codec != VLC_CODEC_AV1)
        return VLC_EGENERIC;

    iface = &aom_codec_av1_dx_algo;
    av_version = 1;

    decoder_sys_t *sys = FUNC6(sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    dec->p_sys = sys;

    sys->i_next_frame_priv = 0;

    struct aom_codec_dec_cfg deccfg = {
        .threads = FUNC1(FUNC8(), 16),
        .allow_lowbitdepth = 1
    };

    FUNC7(p_this, "AV%d: using libaom version %s (build options %s)",
        av_version, FUNC4(), FUNC2());

    if (FUNC3(&sys->ctx, iface, &deccfg, 0) != AOM_CODEC_OK) {
        FUNC0(p_this, &sys->ctx, "Failed to initialize decoder");
        FUNC5(sys);
        return VLC_EGENERIC;;
    }

    dec->pf_decode = Decode;
    dec->pf_flush = FlushDecoder;

    dec->fmt_out.video.i_width = dec->fmt_in.video.i_width;
    dec->fmt_out.video.i_height = dec->fmt_in.video.i_height;
    dec->fmt_out.i_codec = VLC_CODEC_I420;

    if (dec->fmt_in.video.i_sar_num > 0 && dec->fmt_in.video.i_sar_den > 0) {
        dec->fmt_out.video.i_sar_num = dec->fmt_in.video.i_sar_num;
        dec->fmt_out.video.i_sar_den = dec->fmt_in.video.i_sar_den;
    }
    dec->fmt_out.video.primaries   = dec->fmt_in.video.primaries;
    dec->fmt_out.video.transfer    = dec->fmt_in.video.transfer;
    dec->fmt_out.video.space       = dec->fmt_in.video.space;
    dec->fmt_out.video.color_range = dec->fmt_in.video.color_range;

    return VLC_SUCCESS;
}