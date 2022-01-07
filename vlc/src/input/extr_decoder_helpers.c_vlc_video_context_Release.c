
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int private_type; TYPE_1__* ops; scalar_t__ device; int rc; } ;
typedef TYPE_2__ vlc_video_context ;
struct TYPE_6__ {int (* destroy ) (int ) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (int ) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;
 int vlc_decoder_device_Release (scalar_t__) ;
 int vlc_video_context_GetPrivate (TYPE_2__*,int ) ;

void vlc_video_context_Release(vlc_video_context *vctx)
{
    if ( vlc_atomic_rc_dec( &vctx->rc ) )
    {
        if (vctx->device)
            vlc_decoder_device_Release( vctx->device );
        if ( vctx->ops && vctx->ops->destroy )
            vctx->ops->destroy( vlc_video_context_GetPrivate(vctx, vctx->private_type) );
        free(vctx);
    }
}
