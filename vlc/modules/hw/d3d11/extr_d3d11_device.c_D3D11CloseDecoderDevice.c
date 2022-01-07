
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vlc_decoder_device ;
struct TYPE_9__ {int opaque; int (* cleanupDeviceCb ) (int ) ;} ;
struct TYPE_8__ {int device; } ;
struct TYPE_11__ {TYPE_2__ external; int hd3d; TYPE_1__ dec_device; } ;
typedef TYPE_4__ d3d11_decoder_device ;


 int D3D11_Destroy (int *) ;
 int ID3D11DeviceContext_Release (int ) ;
 int VLC_OBJECT (TYPE_3__*) ;
 int stub1 (int ) ;
 int vlc_obj_free (int ,TYPE_4__*) ;

__attribute__((used)) static void D3D11CloseDecoderDevice(vlc_decoder_device *device)
{
    d3d11_decoder_device *sys = device->sys;

    ID3D11DeviceContext_Release(sys->dec_device.device);

    D3D11_Destroy(&sys->hd3d);

    if ( sys->external.cleanupDeviceCb )
        sys->external.cleanupDeviceCb( sys->external.opaque );

    vlc_obj_free( VLC_OBJECT(device), sys );
}
