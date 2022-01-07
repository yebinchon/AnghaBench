
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_type; } ;
typedef TYPE_1__ vlc_video_context ;
typedef enum vlc_video_context_type { ____Placeholder_vlc_video_context_type } vlc_video_context_type ;



enum vlc_video_context_type vlc_video_context_GetType(const vlc_video_context *vctx)
{
    return vctx->private_type;
}
