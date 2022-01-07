
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int * client; } ;
typedef TYPE_2__ aout_sys_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ AUDCLNT_E_DEVICE_INVALIDATED ;
 scalar_t__ AUDCLNT_E_RESOURCES_INVALIDATED ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vlc_FromHR(audio_output_t *aout, HRESULT hr)
{
    aout_sys_t* sys = aout->sys;

    if (unlikely(hr == AUDCLNT_E_DEVICE_INVALIDATED ||
                 hr == AUDCLNT_E_RESOURCES_INVALIDATED))
    {
        sys->client = ((void*)0);
    }
    return SUCCEEDED(hr) ? 0 : -1;
}
