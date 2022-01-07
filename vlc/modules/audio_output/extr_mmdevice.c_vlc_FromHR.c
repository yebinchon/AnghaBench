
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ AUDCLNT_E_DEVICE_INVALIDATED ;
 scalar_t__ AUDCLNT_E_RESOURCES_INVALIDATED ;
 int DeviceSelect (int *,int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vlc_FromHR(audio_output_t *aout, HRESULT hr)
{

    if (unlikely(hr == AUDCLNT_E_DEVICE_INVALIDATED ||
                 hr == AUDCLNT_E_RESOURCES_INVALIDATED))
        DeviceSelect(aout, ((void*)0));
    return SUCCEEDED(hr) ? 0 : -1;
}
