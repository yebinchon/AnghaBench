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
struct vpx_codec_iface {int dummy; } ;
struct vpx_codec_dec_cfg {int /*<<< orphan*/  threads; } ;
struct TYPE_11__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_12__ {int i_codec; TYPE_3__ video; } ;
struct TYPE_9__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_10__ {TYPE_1__ video; } ;
struct TYPE_13__ {TYPE_4__ fmt_in; TYPE_2__ fmt_out; int /*<<< orphan*/  pf_decode; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_14__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_6__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Decode ; 
#define  VLC_CODEC_VP8 130 
#define  VLC_CODEC_VP9 129 
#define  VLC_CODEC_WEBP 128 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ VPX_CODEC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_6__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct vpx_codec_iface const*,struct vpx_codec_dec_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct vpx_codec_iface vpx_codec_vp8_dx_algo ; 
 struct vpx_codec_iface vpx_codec_vp9_dx_algo ; 

__attribute__((used)) static int FUNC9(vlc_object_t *p_this)
{
    decoder_t *dec = (decoder_t *)p_this;
    const struct vpx_codec_iface *iface;
    int vp_version;

    switch (dec->fmt_in.i_codec)
    {
#ifdef ENABLE_VP8_DECODER
    case VLC_CODEC_WEBP:
    case VLC_CODEC_VP8:
        iface = &vpx_codec_vp8_dx_algo;
        vp_version = 8;
        break;
#endif
#ifdef ENABLE_VP9_DECODER
    case VLC_CODEC_VP9:
        iface = &vpx_codec_vp9_dx_algo;
        vp_version = 9;
        break;
#endif
    default:
        return VLC_EGENERIC;
    }

    decoder_sys_t *sys = FUNC3(sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    dec->p_sys = sys;

    struct vpx_codec_dec_cfg deccfg = {
        .threads = FUNC1(FUNC5(), 16)
    };

    FUNC4(p_this, "VP%d: using libvpx version %s (build options %s)",
        vp_version, FUNC8(), FUNC6());

    if (FUNC7(&sys->ctx, iface, &deccfg, 0) != VPX_CODEC_OK) {
        FUNC0(p_this, &sys->ctx, "Failed to initialize decoder");
        FUNC2(sys);
        return VLC_EGENERIC;;
    }

    dec->pf_decode = Decode;

    dec->fmt_out.video.i_width = dec->fmt_in.video.i_width;
    dec->fmt_out.video.i_height = dec->fmt_in.video.i_height;

    if (dec->fmt_in.video.i_sar_num > 0 && dec->fmt_in.video.i_sar_den > 0) {
        dec->fmt_out.video.i_sar_num = dec->fmt_in.video.i_sar_num;
        dec->fmt_out.video.i_sar_den = dec->fmt_in.video.i_sar_den;
    }

    return VLC_SUCCESS;
}