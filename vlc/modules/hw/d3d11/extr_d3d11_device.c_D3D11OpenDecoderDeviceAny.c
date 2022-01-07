
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_window_t ;
typedef int vlc_decoder_device ;


 int D3D11OpenDecoderDevice (int *,int,int *) ;

int D3D11OpenDecoderDeviceAny(vlc_decoder_device *device, vout_window_t *wnd)
{
    return D3D11OpenDecoderDevice(device, 1, wnd);
}
