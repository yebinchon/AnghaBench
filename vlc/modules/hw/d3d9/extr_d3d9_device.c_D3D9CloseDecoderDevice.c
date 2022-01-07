
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_decoder_device ;
struct TYPE_7__ {int opaque; int (* cleanupDeviceCb ) (int ) ;int hd3d; } ;
typedef TYPE_2__ d3d9_decoder_device ;


 int D3D9_Destroy (int *) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int stub1 (int ) ;
 int vlc_obj_free (int ,TYPE_2__*) ;

__attribute__((used)) static void D3D9CloseDecoderDevice(vlc_decoder_device *device)
{
    d3d9_decoder_device *sys = device->sys;

    D3D9_Destroy( &sys->hd3d );

    if ( sys->cleanupDeviceCb )
        sys->cleanupDeviceCb( sys->opaque );
    vlc_obj_free( VLC_OBJECT(device), sys );
}
