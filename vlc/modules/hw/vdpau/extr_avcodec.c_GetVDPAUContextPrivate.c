
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_video_context ;
struct video_context_private {int dummy; } ;


 int VLC_VIDEO_CONTEXT_VDPAU ;
 scalar_t__ vlc_video_context_GetPrivate (int *,int ) ;

__attribute__((used)) static inline struct video_context_private *GetVDPAUContextPrivate(vlc_video_context *vctx)
{
    return (struct video_context_private *)
        vlc_video_context_GetPrivate( vctx, VLC_VIDEO_CONTEXT_VDPAU );
}
