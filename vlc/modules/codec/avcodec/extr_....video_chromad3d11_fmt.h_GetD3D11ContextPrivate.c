
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_video_context ;
typedef int d3d11_video_context_t ;


 int VLC_VIDEO_CONTEXT_D3D11VA ;
 scalar_t__ vlc_video_context_GetPrivate (int *,int ) ;

__attribute__((used)) static inline d3d11_video_context_t *GetD3D11ContextPrivate(vlc_video_context *vctx)
{
    return (d3d11_video_context_t *) vlc_video_context_GetPrivate( vctx, VLC_VIDEO_CONTEXT_D3D11VA );
}
