
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct render_context {int d3d; } ;
struct TYPE_3__ {int adapter; int device_context; } ;
typedef TYPE_1__ libvlc_video_direct3d_device_setup_t ;
typedef int libvlc_video_direct3d_device_cfg_t ;


 int D3DADAPTER_DEFAULT ;

__attribute__((used)) static bool Setup_cb( void **opaque, const libvlc_video_direct3d_device_cfg_t *cfg, libvlc_video_direct3d_device_setup_t *out )
{
    struct render_context *ctx = *opaque;
    out->device_context = ctx->d3d;
    out->adapter = D3DADAPTER_DEFAULT;
    return 1;
}
