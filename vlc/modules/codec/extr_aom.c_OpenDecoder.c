
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct aom_codec_dec_cfg {int allow_lowbitdepth; int threads; } ;
struct TYPE_11__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int color_range; int space; int transfer; int primaries; int i_height; int i_width; } ;
struct TYPE_12__ {scalar_t__ i_codec; TYPE_3__ video; } ;
struct TYPE_9__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int color_range; int space; int transfer; int primaries; int i_height; int i_width; } ;
struct TYPE_10__ {TYPE_1__ video; int i_codec; } ;
struct TYPE_13__ {TYPE_4__ fmt_in; TYPE_2__ fmt_out; int pf_flush; int pf_decode; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_14__ {int ctx; scalar_t__ i_next_frame_priv; } ;
typedef TYPE_6__ decoder_sys_t ;
typedef int aom_codec_iface_t ;


 scalar_t__ AOM_CODEC_OK ;
 int AOM_ERR (int *,int *,char*) ;
 int Decode ;
 int FlushDecoder ;
 scalar_t__ VLC_CODEC_AV1 ;
 int VLC_CODEC_I420 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int __MIN (int ,int) ;
 int aom_codec_av1_dx_algo ;
 int aom_codec_build_config () ;
 scalar_t__ aom_codec_dec_init (int *,int const*,struct aom_codec_dec_cfg*,int ) ;
 int aom_codec_version_str () ;
 int free (TYPE_6__*) ;
 TYPE_6__* malloc (int) ;
 int msg_Dbg (int *,char*,int,int ,int ) ;
 int vlc_GetCPUCount () ;

__attribute__((used)) static int OpenDecoder(vlc_object_t *p_this)
{
    decoder_t *dec = (decoder_t *)p_this;
    const aom_codec_iface_t *iface;
    int av_version;

    if (dec->fmt_in.i_codec != VLC_CODEC_AV1)
        return VLC_EGENERIC;

    iface = &aom_codec_av1_dx_algo;
    av_version = 1;

    decoder_sys_t *sys = malloc(sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    dec->p_sys = sys;

    sys->i_next_frame_priv = 0;

    struct aom_codec_dec_cfg deccfg = {
        .threads = __MIN(vlc_GetCPUCount(), 16),
        .allow_lowbitdepth = 1
    };

    msg_Dbg(p_this, "AV%d: using libaom version %s (build options %s)",
        av_version, aom_codec_version_str(), aom_codec_build_config());

    if (aom_codec_dec_init(&sys->ctx, iface, &deccfg, 0) != AOM_CODEC_OK) {
        AOM_ERR(p_this, &sys->ctx, "Failed to initialize decoder");
        free(sys);
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
    dec->fmt_out.video.primaries = dec->fmt_in.video.primaries;
    dec->fmt_out.video.transfer = dec->fmt_in.video.transfer;
    dec->fmt_out.video.space = dec->fmt_in.video.space;
    dec->fmt_out.video.color_range = dec->fmt_in.video.color_range;

    return VLC_SUCCESS;
}
