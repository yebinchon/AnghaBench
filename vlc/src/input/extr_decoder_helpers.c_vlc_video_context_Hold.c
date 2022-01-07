
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; } ;
typedef TYPE_1__ vlc_video_context ;


 int vlc_atomic_rc_inc (int *) ;

vlc_video_context *vlc_video_context_Hold(vlc_video_context *vctx)
{
    vlc_atomic_rc_inc( &vctx->rc );
    return vctx;
}
