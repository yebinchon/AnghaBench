
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
struct vpx_codec_iface {int dummy; } ;
struct vpx_codec_dec_cfg {int threads; } ;
struct TYPE_11__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int i_height; int i_width; } ;
struct TYPE_12__ {int i_codec; TYPE_3__ video; } ;
struct TYPE_9__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int i_height; int i_width; } ;
struct TYPE_10__ {TYPE_1__ video; } ;
struct TYPE_13__ {TYPE_4__ fmt_in; TYPE_2__ fmt_out; int pf_decode; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_14__ {int ctx; } ;
typedef TYPE_6__ decoder_sys_t ;


 int Decode ;



 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ VPX_CODEC_OK ;
 int VPX_ERR (int *,int *,char*) ;
 int __MIN (int ,int) ;
 int free (TYPE_6__*) ;
 TYPE_6__* malloc (int) ;
 int msg_Dbg (int *,char*,int,int ,int ) ;
 int vlc_GetCPUCount () ;
 int vpx_codec_build_config () ;
 scalar_t__ vpx_codec_dec_init (int *,struct vpx_codec_iface const*,struct vpx_codec_dec_cfg*,int ) ;
 int vpx_codec_version_str () ;
 struct vpx_codec_iface vpx_codec_vp8_dx_algo ;
 struct vpx_codec_iface vpx_codec_vp9_dx_algo ;

__attribute__((used)) static int OpenDecoder(vlc_object_t *p_this)
{
    decoder_t *dec = (decoder_t *)p_this;
    const struct vpx_codec_iface *iface;
    int vp_version;

    switch (dec->fmt_in.i_codec)
    {
    default:
        return VLC_EGENERIC;
    }

    decoder_sys_t *sys = malloc(sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    dec->p_sys = sys;

    struct vpx_codec_dec_cfg deccfg = {
        .threads = __MIN(vlc_GetCPUCount(), 16)
    };

    msg_Dbg(p_this, "VP%d: using libvpx version %s (build options %s)",
        vp_version, vpx_codec_version_str(), vpx_codec_build_config());

    if (vpx_codec_dec_init(&sys->ctx, iface, &deccfg, 0) != VPX_CODEC_OK) {
        VPX_ERR(p_this, &sys->ctx, "Failed to initialize decoder");
        free(sys);
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
