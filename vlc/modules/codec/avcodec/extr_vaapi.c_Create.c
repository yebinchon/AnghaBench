
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int vlc_video_context ;
struct TYPE_26__ {int * ops; TYPE_3__* sys; } ;
typedef TYPE_2__ vlc_va_t ;
struct TYPE_25__ {scalar_t__ config_id; scalar_t__ context_id; int display; } ;
struct TYPE_27__ {int * va_pool; int * vctx; TYPE_1__ hw_ctx; int * render_targets; } ;
typedef TYPE_3__ vlc_va_sys_t ;
typedef int vlc_object_t ;
struct TYPE_28__ {scalar_t__ type; int opaque; } ;
typedef TYPE_4__ vlc_decoder_device ;
struct TYPE_29__ {scalar_t__ i_chroma; } ;
typedef TYPE_5__ video_format_t ;
struct va_pool_cfg {TYPE_3__* member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_30__ {TYPE_5__ video; } ;
typedef TYPE_6__ es_format_t ;
typedef int VASurfaceID ;
typedef int VAProfile ;
typedef int VADisplay ;
struct TYPE_31__ {int coded_height; int coded_width; } ;
typedef int AVPixFmtDescriptor ;
typedef TYPE_7__ AVCodecContext ;


 int GetVaProfile (TYPE_7__*,TYPE_6__ const*,int *,int*,unsigned int*) ;
 int VAAPICreateDecoderSurfaces ;
 int VAAPICreateDevice ;
 int VAAPIDestroyDevice ;
 int VAAPISetupAVCodecContext ;
 int VAEntrypointVLD ;
 scalar_t__ VA_INVALID_ID ;
 int VA_PROGRESSIVE ;
 scalar_t__ VLC_CODEC_VAAPI_420 ;
 scalar_t__ VLC_CODEC_VAAPI_420_10BPP ;
 scalar_t__ VLC_DECODER_DEVICE_VAAPI ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int * VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int const*) ;
 int VLC_VIDEO_CONTEXT_VAAPI ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int msg_Info (TYPE_2__*,char*,int ) ;
 int ops ;
 scalar_t__ unlikely (int ) ;
 int vaQueryVendorString (int ) ;
 int va_pool_Close (int *) ;
 int * va_pool_Create (TYPE_2__*,struct va_pool_cfg*) ;
 int va_pool_SetupDecoder (TYPE_2__*,int *,TYPE_7__*,TYPE_5__*,unsigned int) ;
 scalar_t__ vlc_vaapi_CreateConfigChecked (int *,int ,int ,int ,int) ;
 scalar_t__ vlc_vaapi_CreateContext (int *,int ,scalar_t__,int ,int ,int ,int *,unsigned int) ;
 int * vlc_video_context_Create (TYPE_4__*,int ,int ,int *) ;

__attribute__((used)) static int Create(vlc_va_t *va, AVCodecContext *ctx, const AVPixFmtDescriptor *desc,
                  const es_format_t *fmt_in, vlc_decoder_device *dec_device,
                  video_format_t *fmt_out, vlc_video_context **vtcx_out)
{
    VLC_UNUSED(desc);
    if ( (fmt_out->i_chroma != VLC_CODEC_VAAPI_420 &&
          fmt_out->i_chroma != VLC_CODEC_VAAPI_420_10BPP) || dec_device == ((void*)0) ||
        dec_device->type != VLC_DECODER_DEVICE_VAAPI)
        return VLC_EGENERIC;

    vlc_va_sys_t *sys = malloc(sizeof *sys);
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;
    memset(sys, 0, sizeof (*sys));

    vlc_object_t *o = VLC_OBJECT(va);

    int ret = VLC_EGENERIC;

    VADisplay va_dpy = dec_device->opaque;

    VAProfile i_profile;
    unsigned count;
    int i_vlc_chroma;
    if (GetVaProfile(ctx, fmt_in, &i_profile, &i_vlc_chroma, &count) != VLC_SUCCESS)
        goto error;


    sys->hw_ctx.display = va_dpy;
    sys->hw_ctx.config_id = VA_INVALID_ID;
    sys->hw_ctx.context_id = VA_INVALID_ID;
    va->sys = sys;

    video_format_t fmt_video = fmt_in->video;
    fmt_video.i_chroma = i_vlc_chroma;

    struct va_pool_cfg pool_cfg = {
        VAAPICreateDevice,
        VAAPIDestroyDevice,
        VAAPICreateDecoderSurfaces,
        VAAPISetupAVCodecContext,
        sys,
    };
    sys->va_pool = va_pool_Create(va, &pool_cfg);
    if (sys->va_pool == ((void*)0))
        goto error;

    int err = va_pool_SetupDecoder(va, sys->va_pool, ctx, &fmt_video, count);
    if (err != VLC_SUCCESS)
        goto error;

    VASurfaceID *render_targets = sys->render_targets;

    sys->hw_ctx.config_id =
        vlc_vaapi_CreateConfigChecked(o, sys->hw_ctx.display, i_profile,
                                      VAEntrypointVLD, i_vlc_chroma);
    if (sys->hw_ctx.config_id == VA_INVALID_ID)
        goto error;


    sys->hw_ctx.context_id =
        vlc_vaapi_CreateContext(o, sys->hw_ctx.display, sys->hw_ctx.config_id,
                                ctx->coded_width, ctx->coded_height, VA_PROGRESSIVE,
                                render_targets, count);
    if (sys->hw_ctx.context_id == VA_INVALID_ID)
        goto error;

    msg_Info(va, "Using %s", vaQueryVendorString(sys->hw_ctx.display));

    sys->vctx = vlc_video_context_Create( dec_device, VLC_VIDEO_CONTEXT_VAAPI, 0, ((void*)0) );
    if (sys->vctx == ((void*)0))
        goto error;

    va->ops = &ops;
    *vtcx_out = sys->vctx;
    return VLC_SUCCESS;

error:
    if (sys->va_pool != ((void*)0))
        va_pool_Close(sys->va_pool);
    else
        free(sys);
    return ret;
}
