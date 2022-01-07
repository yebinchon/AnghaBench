
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int private_type; size_t private_size; struct vlc_video_context_operations const* ops; int * device; int rc; } ;
typedef TYPE_1__ vlc_video_context ;
typedef int vlc_decoder_device ;
struct vlc_video_context_operations {int dummy; } ;
typedef enum vlc_video_context_type { ____Placeholder_vlc_video_context_type } vlc_video_context_type ;


 int VLC_VIDEO_CONTEXT_NONE ;
 int assert (int) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_decoder_device_Hold (int *) ;

vlc_video_context * vlc_video_context_Create(vlc_decoder_device *device,
                                          enum vlc_video_context_type private_type,
                                          size_t private_size,
                                          const struct vlc_video_context_operations *ops)
{
    assert(private_type != VLC_VIDEO_CONTEXT_NONE);
    vlc_video_context *vctx = malloc(sizeof(*vctx) + private_size);
    if (unlikely(vctx == ((void*)0)))
        return ((void*)0);
    vlc_atomic_rc_init( &vctx->rc );
    vctx->private_type = private_type;
    vctx->private_size = private_size;
    vctx->device = device;
    if (vctx->device)
        vlc_decoder_device_Hold( vctx->device );
    vctx->ops = ops;
    return vctx;
}
