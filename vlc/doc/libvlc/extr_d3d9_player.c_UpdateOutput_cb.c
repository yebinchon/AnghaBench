
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct render_context {int dummy; } ;
typedef int libvlc_video_output_cfg_t ;
struct TYPE_3__ {scalar_t__ device; int height; int width; } ;
typedef TYPE_1__ libvlc_video_direct3d_cfg_t ;
typedef int IDirect3DDevice9 ;


 int Resize (struct render_context*,int ,int ,int *,int *) ;

__attribute__((used)) static bool UpdateOutput_cb( void *opaque, const libvlc_video_direct3d_cfg_t *cfg, libvlc_video_output_cfg_t *out )
{
    struct render_context *ctx = opaque;
    return Resize(ctx, cfg->width, cfg->height, (IDirect3DDevice9*)cfg->device, out);
}
