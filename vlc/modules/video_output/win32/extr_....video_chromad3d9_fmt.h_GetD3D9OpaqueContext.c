
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_video_context ;
struct TYPE_5__ {scalar_t__ type; int * opaque; } ;
typedef TYPE_1__ vlc_decoder_device ;
typedef int d3d9_decoder_device_t ;


 int * GetD3D9OpaqueDevice (TYPE_1__*) ;
 scalar_t__ VLC_DECODER_DEVICE_DXVA2 ;
 int assert (int ) ;
 scalar_t__ unlikely (int ) ;
 int vlc_decoder_device_Release (TYPE_1__*) ;
 TYPE_1__* vlc_video_context_HoldDevice (int *) ;

__attribute__((used)) static inline d3d9_decoder_device_t *GetD3D9OpaqueContext(vlc_video_context *vctx)
{
    vlc_decoder_device *device = vctx ? vlc_video_context_HoldDevice(vctx) : ((void*)0);
    if (unlikely(device == ((void*)0)))
        return ((void*)0);
    d3d9_decoder_device_t *res = ((void*)0);
    if (device->type == VLC_DECODER_DEVICE_DXVA2)
    {
        assert(device->opaque != ((void*)0));
        res = GetD3D9OpaqueDevice(device);
    }
    vlc_decoder_device_Release(device);
    return res;
}
