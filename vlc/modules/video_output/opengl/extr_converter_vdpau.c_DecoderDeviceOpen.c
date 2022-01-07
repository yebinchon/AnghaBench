
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x11; } ;
struct TYPE_8__ {TYPE_1__ display; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_9__ {int * opaque; int type; int * ops; } ;
typedef TYPE_3__ vlc_decoder_device ;
typedef int vdp_t ;
typedef int VdpDevice ;


 scalar_t__ VDP_STATUS_OK ;
 int VLC_DECODER_DEVICE_VDPAU ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int dev_ops ;
 scalar_t__ vdp_get_x11 (int ,int,int **,int *) ;
 int vlc_xlib_init (int ) ;

__attribute__((used)) static int
DecoderDeviceOpen(vlc_decoder_device *device, vout_window_t *window)
{
    if (!window || !vlc_xlib_init(VLC_OBJECT(window)))
        return VLC_EGENERIC;

    vdp_t *vdp;
    VdpDevice vdpdevice;

    if (vdp_get_x11(window->display.x11, -1, &vdp, &vdpdevice) != VDP_STATUS_OK)
        return VLC_EGENERIC;

    device->ops = &dev_ops;
    device->type = VLC_DECODER_DEVICE_VDPAU;
    device->opaque = vdp;
    return VLC_SUCCESS;
}
