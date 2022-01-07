
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vdp_t ;
typedef int uint32_t ;
struct TYPE_13__ {int video; } ;
struct TYPE_16__ {scalar_t__ i_chroma; } ;
struct TYPE_12__ {TYPE_5__ video; } ;
struct TYPE_14__ {int p_cfg; TYPE_4__* p_sys; int pf_video_filter; TYPE_2__ fmt_out; TYPE_1__ fmt_in; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_15__ {int sigma; } ;
typedef TYPE_4__ filter_sys_t ;
typedef scalar_t__ VdpStatus ;
typedef int VdpDevice ;
typedef scalar_t__ VdpBool ;


 int Sharpen ;
 int SharpenCallback ;
 scalar_t__ VDP_FALSE ;
 scalar_t__ VDP_STATUS_OK ;
 scalar_t__ VDP_TRUE ;
 int VDP_VIDEO_MIXER_FEATURE_SHARPNESS ;
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_420 ;
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_422 ;
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_444 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int atomic_init (int *,int ) ;
 int config_ChainParse (TYPE_3__*,char*,int ,int ) ;
 TYPE_4__* malloc (int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int options ;
 scalar_t__ unlikely (int ) ;
 int var_AddCallback (TYPE_3__*,char*,int ,TYPE_4__*) ;
 int var_CreateGetFloatCommand (TYPE_3__*,char*) ;
 scalar_t__ vdp_get_x11 (int *,int,int **,int *) ;
 int vdp_release_x11 (int *) ;
 scalar_t__ vdp_video_mixer_query_feature_support (int *,int ,int ,scalar_t__*) ;
 int video_format_IsSimilar (TYPE_5__*,int *) ;
 float vlc_to_vdp_sigma (int ) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;

    if (filter->fmt_in.video.i_chroma != VLC_CODEC_VDPAU_VIDEO_420
     && filter->fmt_in.video.i_chroma != VLC_CODEC_VDPAU_VIDEO_422
     && filter->fmt_in.video.i_chroma != VLC_CODEC_VDPAU_VIDEO_444)
        return VLC_EGENERIC;
    if (!video_format_IsSimilar(&filter->fmt_in.video, &filter->fmt_out.video))
        return VLC_EGENERIC;


    vdp_t *vdp;
    VdpDevice device;
    VdpStatus err;
    VdpBool ok;

    err = vdp_get_x11(((void*)0), -1, &vdp, &device);
    if (err != VDP_STATUS_OK)
        return VLC_EGENERIC;

    err = vdp_video_mixer_query_feature_support(vdp, device,
                                       VDP_VIDEO_MIXER_FEATURE_SHARPNESS, &ok);
    if (err != VDP_STATUS_OK)
        ok = VDP_FALSE;
    vdp_release_x11(vdp);

    if (ok != VDP_TRUE)
    {
        msg_Err(filter, "sharpening/blurring not supported by VDPAU device");
        return VLC_EGENERIC;
    }


    filter_sys_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    filter->pf_video_filter = Sharpen;
    filter->p_sys = sys;

    config_ChainParse(filter, "sharpen-", options, filter->p_cfg);
    var_AddCallback(filter, "sharpen-sigma", SharpenCallback, sys);

    union { uint32_t u; float f; } u;
    u.f = vlc_to_vdp_sigma(var_CreateGetFloatCommand(filter, "sharpen-sigma"));
    atomic_init(&sys->sigma, u.u);

    return VLC_SUCCESS;
}
