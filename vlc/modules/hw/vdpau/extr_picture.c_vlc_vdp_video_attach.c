
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int context; } ;
typedef TYPE_2__ vlc_vdp_video_field_t ;
typedef int vdp_t ;
struct TYPE_6__ {scalar_t__ i_chroma; } ;
struct TYPE_8__ {int * context; TYPE_1__ format; } ;
typedef TYPE_3__ picture_t ;
typedef int VdpVideoSurface ;
typedef int VdpStatus ;


 int VDP_STATUS_OK ;
 int VDP_STATUS_RESOURCES ;
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_420 ;
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_422 ;
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_444 ;
 int assert (int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_2__* vlc_vdp_video_create (int *,int ) ;

VdpStatus vlc_vdp_video_attach(vdp_t *vdp, VdpVideoSurface surface,
                               picture_t *pic)
{
    vlc_vdp_video_field_t *field = vlc_vdp_video_create(vdp, surface);
    if (unlikely(field == ((void*)0)))
        return VDP_STATUS_RESOURCES;

    assert(pic->format.i_chroma == VLC_CODEC_VDPAU_VIDEO_420
        || pic->format.i_chroma == VLC_CODEC_VDPAU_VIDEO_422
        || pic->format.i_chroma == VLC_CODEC_VDPAU_VIDEO_444);
    assert(pic->context == ((void*)0));
    pic->context = &field->context;
    return VDP_STATUS_OK;
}
