
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int * opaque; } ;
typedef TYPE_1__ vlc_decoder_device ;
typedef int decoder_device_nvdec_t ;


 scalar_t__ VLC_DECODER_DEVICE_NVDEC ;

__attribute__((used)) static inline decoder_device_nvdec_t *GetNVDECOpaqueDevice(vlc_decoder_device *device)
{
    if (device == ((void*)0) || device->type != VLC_DECODER_DEVICE_NVDEC)
        return ((void*)0);
    return device->opaque;
}
