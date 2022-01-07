
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ vlc_decoder_device ;


 int vaapi_DestroyInstance (int ) ;

__attribute__((used)) static void
Close(vlc_decoder_device *device)
{
    vaapi_DestroyInstance(device->sys);
}
