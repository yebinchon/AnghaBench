
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_context {int * libvlc_d3d; } ;


 int IDirect3DDevice9_Release (int *) ;

__attribute__((used)) static void Cleanup_cb( void *opaque )
{

    struct render_context *ctx = opaque;
    if (ctx->libvlc_d3d)
    {
        IDirect3DDevice9_Release(ctx->libvlc_d3d);
        ctx->libvlc_d3d = ((void*)0);
    }
}
