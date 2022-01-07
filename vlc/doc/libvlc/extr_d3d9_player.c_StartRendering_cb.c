
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_context {int libvlc_d3d; } ;
typedef int libvlc_video_direct3d_hdr10_metadata_t ;


 int IDirect3DDevice9_Present (int ,int *,int *,int *,int *) ;

__attribute__((used)) static bool StartRendering_cb( void *opaque, bool enter, const libvlc_video_direct3d_hdr10_metadata_t *hdr10 )
{
    struct render_context *ctx = opaque;
    if ( enter )
    {

        return 1;
    }




    IDirect3DDevice9_Present(ctx->libvlc_d3d, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    return 1;
}
