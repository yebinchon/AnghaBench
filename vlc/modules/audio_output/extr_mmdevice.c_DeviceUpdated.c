
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int it; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int LPCWSTR ;
typedef int IMMDevice ;
typedef int HRESULT ;


 int DeviceHotplugReport (TYPE_1__*,int ,int *) ;
 int DeviceIsRender (int *) ;
 scalar_t__ FAILED (int ) ;
 int IMMDeviceEnumerator_GetDevice (int ,int ,int **) ;
 int IMMDevice_Release (int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT DeviceUpdated(audio_output_t *aout, LPCWSTR wid)
{
    aout_sys_t *sys = aout->sys;
    HRESULT hr;

    IMMDevice *dev;
    hr = IMMDeviceEnumerator_GetDevice(sys->it, wid, &dev);
    if (FAILED(hr))
        return hr;

    if (!DeviceIsRender(dev))
    {
        IMMDevice_Release(dev);
        return S_OK;
    }

    DeviceHotplugReport(aout, wid, dev);
    IMMDevice_Release(dev);
    return S_OK;
}
