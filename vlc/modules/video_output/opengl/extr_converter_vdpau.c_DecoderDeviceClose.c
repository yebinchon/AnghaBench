
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_decoder_device ;


 int GetVDPAUOpaqueDevice (int *) ;
 int vdp_release_x11 (int ) ;

__attribute__((used)) static void
DecoderDeviceClose(vlc_decoder_device *device)
{
    vdp_release_x11(GetVDPAUOpaqueDevice(device));
}
