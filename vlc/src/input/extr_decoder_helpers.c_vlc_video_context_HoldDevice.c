
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
typedef TYPE_1__ vlc_video_context ;
typedef int vlc_decoder_device ;


 int * vlc_decoder_device_Hold (int ) ;

vlc_decoder_device* vlc_video_context_HoldDevice(vlc_video_context *vctx)
{
    if (!vctx->device)
        return ((void*)0);
    return vlc_decoder_device_Hold( vctx->device );
}
