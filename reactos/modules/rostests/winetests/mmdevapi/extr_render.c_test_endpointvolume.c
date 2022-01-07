
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IAudioEndpointVolume ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_POINTER ;
 scalar_t__ IAudioEndpointVolume_GetMasterVolumeLevel (int *,float*) ;
 scalar_t__ IAudioEndpointVolume_GetMute (int *,int *) ;
 scalar_t__ IAudioEndpointVolume_GetVolumeRange (int *,float*,float*,float*) ;
 int IAudioEndpointVolume_Release (int *) ;
 scalar_t__ IAudioEndpointVolume_SetMasterVolumeLevel (int *,float,int *) ;
 scalar_t__ IAudioEndpointVolume_SetMute (int *,int ,int *) ;
 int IID_IAudioEndpointVolume ;
 scalar_t__ IMMDevice_Activate (int ,int *,int ,int *,void**) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int dev ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*,float,float,float) ;

__attribute__((used)) static void test_endpointvolume(void)
{
    HRESULT hr;
    IAudioEndpointVolume *aev;
    float mindb, maxdb, increment, volume;
    BOOL mute;

    hr = IMMDevice_Activate(dev, &IID_IAudioEndpointVolume,
            CLSCTX_INPROC_SERVER, ((void*)0), (void**)&aev);
    ok(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = IAudioEndpointVolume_GetVolumeRange(aev, &mindb, ((void*)0), ((void*)0));
    ok(hr == E_POINTER, "GetVolumeRange should have failed with E_POINTER: 0x%08x\n", hr);

    hr = IAudioEndpointVolume_GetVolumeRange(aev, &mindb, &maxdb, &increment);
    ok(hr == S_OK, "GetVolumeRange failed: 0x%08x\n", hr);
    trace("got range: [%f,%f]/%f\n", mindb, maxdb, increment);

    hr = IAudioEndpointVolume_SetMasterVolumeLevel(aev, mindb - increment, ((void*)0));
    ok(hr == E_INVALIDARG, "SetMasterVolumeLevel failed: 0x%08x\n", hr);

    hr = IAudioEndpointVolume_GetMasterVolumeLevel(aev, &volume);
    ok(hr == S_OK, "GetMasterVolumeLevel failed: 0x%08x\n", hr);

    hr = IAudioEndpointVolume_SetMasterVolumeLevel(aev, volume, ((void*)0));
    ok(hr == S_OK, "SetMasterVolumeLevel failed: 0x%08x\n", hr);

    hr = IAudioEndpointVolume_GetMute(aev, &mute);
    ok(hr == S_OK, "GetMute failed: %08x\n", hr);

    hr = IAudioEndpointVolume_SetMute(aev, mute, ((void*)0));
    ok(hr == S_OK || hr == S_FALSE, "SetMute failed: %08x\n", hr);

    IAudioEndpointVolume_Release(aev);
}
