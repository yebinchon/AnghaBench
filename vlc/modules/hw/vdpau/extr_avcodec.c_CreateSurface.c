
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_vdp_video_field_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_va_t ;
struct TYPE_6__ {int height; int width; int type; int device; int vctx; } ;
typedef TYPE_2__ vlc_va_sys_t ;
struct video_context_private {int vdp; } ;
typedef int VdpVideoSurface ;
typedef scalar_t__ VdpStatus ;


 struct video_context_private* GetVDPAUContextPrivate (int ) ;
 scalar_t__ VDP_STATUS_OK ;
 int msg_Err (TYPE_1__*,char*,char*,int ) ;
 scalar_t__ unlikely (int ) ;
 int vdp_get_error_string (int ,scalar_t__) ;
 scalar_t__ vdp_video_surface_create (int ,int ,int ,int ,int ,int *) ;
 int vdp_video_surface_destroy (int ,int ) ;
 int * vlc_vdp_video_create (int ,int ) ;

__attribute__((used)) static vlc_vdp_video_field_t *CreateSurface(vlc_va_t *va)
{
    vlc_va_sys_t *sys = va->sys;
    struct video_context_private *vctx_priv = GetVDPAUContextPrivate(sys->vctx);
    VdpVideoSurface surface;
    VdpStatus err;

    err = vdp_video_surface_create(vctx_priv->vdp, sys->device, sys->type,
                                   sys->width, sys->height, &surface);
    if (err != VDP_STATUS_OK)
    {
        msg_Err(va, "%s creation failure: %s", "video surface",
                vdp_get_error_string(vctx_priv->vdp, err));
        return ((void*)0);
    }

    vlc_vdp_video_field_t *field = vlc_vdp_video_create(vctx_priv->vdp, surface);
    if (unlikely(field == ((void*)0)))
        vdp_video_surface_destroy(vctx_priv->vdp, surface);
    return field;
}
