
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WAVEFORMATEX ;
typedef int ULONG ;
typedef int IMMDevice ;
typedef int IAudioSessionControl2 ;
typedef int IAudioClient ;
typedef int HRESULT ;
typedef int GUID ;
typedef int AudioSessionState ;


 int AUDCLNT_SHAREMODE_SHARED ;
 int AudioSessionStateActive ;
 int AudioSessionStateInactive ;
 int CLSCTX_INPROC_SERVER ;
 int CoCreateGuid (int *) ;
 int CoTaskMemFree (int *) ;
 int E_NOINTERFACE ;
 scalar_t__ FAILED (int) ;
 int IAudioClient_GetMixFormat (int *,int **) ;
 int IAudioClient_GetService (int *,int *,void**) ;
 int IAudioClient_Initialize (int *,int ,int ,int,int ,int *,int *) ;
 int IAudioClient_Release (int *) ;
 int IAudioClient_Start (int *) ;
 int IAudioClient_Stop (int *) ;
 int IAudioSessionControl2_GetState (int *,int*) ;
 int IAudioSessionControl2_Release (int *) ;
 int IID_IAudioClient ;
 int IID_IAudioSessionControl ;
 int IID_IAudioSessionControl2 ;
 int IMMDeviceEnumerator_GetDefaultAudioEndpoint (int ,int ,int ,int **) ;
 int IMMDevice_Activate (int *,int *,int ,int *,void**) ;
 int IMMDevice_Release (int *) ;
 int NULL_PTR_ERR ;
 int S_OK ;
 int * dev ;
 int eCapture ;
 int eMultimedia ;
 int mme ;
 int ok (int,char*,...) ;
 int skip (char*,...) ;

__attribute__((used)) static void test_session(void)
{
    IAudioClient *ses1_ac1, *ses1_ac2, *cap_ac;
    IAudioSessionControl2 *ses1_ctl, *ses1_ctl2, *cap_ctl = ((void*)0);
    IMMDevice *cap_dev;
    GUID ses1_guid;
    AudioSessionState state;
    WAVEFORMATEX *pwfx;
    ULONG ref;
    HRESULT hr;

    hr = CoCreateGuid(&ses1_guid);
    ok(hr == S_OK, "CoCreateGuid failed: %08x\n", hr);

    hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            ((void*)0), (void**)&ses1_ac1);
    ok(hr == S_OK, "Activation failed with %08x\n", hr);
    if (FAILED(hr)) return;

    hr = IAudioClient_GetMixFormat(ses1_ac1, &pwfx);
    ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = IAudioClient_Initialize(ses1_ac1, AUDCLNT_SHAREMODE_SHARED,
            0, 5000000, 0, pwfx, &ses1_guid);
    ok(hr == S_OK, "Initialize failed: %08x\n", hr);

    if(hr == S_OK){
        hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
                ((void*)0), (void**)&ses1_ac2);
        ok(hr == S_OK, "Activation failed with %08x\n", hr);
    }
    if(hr != S_OK){
        skip("Unable to open the same device twice. Skipping session tests\n");

        ref = IAudioClient_Release(ses1_ac1);
        ok(ref == 0, "AudioClient wasn't released: %u\n", ref);
        CoTaskMemFree(pwfx);
        return;
    }

    hr = IAudioClient_Initialize(ses1_ac2, AUDCLNT_SHAREMODE_SHARED,
            0, 5000000, 0, pwfx, &ses1_guid);
    ok(hr == S_OK, "Initialize failed: %08x\n", hr);

    hr = IMMDeviceEnumerator_GetDefaultAudioEndpoint(mme, eCapture,
            eMultimedia, &cap_dev);
    if(hr == S_OK){
        hr = IMMDevice_Activate(cap_dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
                ((void*)0), (void**)&cap_ac);
        ok((hr == S_OK)^(cap_ac == ((void*)0)), "Activate %08x &out pointer\n", hr);
        ok(hr == S_OK, "Activate failed: %08x\n", hr);
        IMMDevice_Release(cap_dev);
    }
    if(hr == S_OK){
        WAVEFORMATEX *cap_pwfx;

        hr = IAudioClient_GetMixFormat(cap_ac, &cap_pwfx);
        ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

        hr = IAudioClient_Initialize(cap_ac, AUDCLNT_SHAREMODE_SHARED,
                0, 5000000, 0, cap_pwfx, &ses1_guid);
        ok(hr == S_OK, "Initialize failed for capture in rendering session: %08x\n", hr);
        CoTaskMemFree(cap_pwfx);
    }
    if(hr == S_OK){
        hr = IAudioClient_GetService(cap_ac, &IID_IAudioSessionControl, (void**)&cap_ctl);
        ok(hr == S_OK, "GetService failed: %08x\n", hr);
        if(FAILED(hr))
            cap_ctl = ((void*)0);
    }else
        skip("No capture session: %08x; skipping capture device in render session tests\n", hr);

    hr = IAudioClient_GetService(ses1_ac1, &IID_IAudioSessionControl2, (void**)&ses1_ctl);
    ok(hr == E_NOINTERFACE, "GetService gave wrong error: %08x\n", hr);

    hr = IAudioClient_GetService(ses1_ac1, &IID_IAudioSessionControl, (void**)&ses1_ctl);
    ok(hr == S_OK, "GetService failed: %08x\n", hr);

    hr = IAudioClient_GetService(ses1_ac1, &IID_IAudioSessionControl, (void**)&ses1_ctl2);
    ok(hr == S_OK, "GetService failed: %08x\n", hr);
    ok(ses1_ctl == ses1_ctl2, "Got different controls: %p %p\n", ses1_ctl, ses1_ctl2);
    ref = IAudioSessionControl2_Release(ses1_ctl2);
    ok(ref != 0, "AudioSessionControl was destroyed\n");

    hr = IAudioClient_GetService(ses1_ac2, &IID_IAudioSessionControl, (void**)&ses1_ctl2);
    ok(hr == S_OK, "GetService failed: %08x\n", hr);

    hr = IAudioSessionControl2_GetState(ses1_ctl, ((void*)0));
    ok(hr == NULL_PTR_ERR, "GetState gave wrong error: %08x\n", hr);

    hr = IAudioSessionControl2_GetState(ses1_ctl, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    hr = IAudioSessionControl2_GetState(ses1_ctl2, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    if(cap_ctl){
        hr = IAudioSessionControl2_GetState(cap_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);
    }

    hr = IAudioClient_Start(ses1_ac1);
    ok(hr == S_OK, "Start failed: %08x\n", hr);

    hr = IAudioSessionControl2_GetState(ses1_ctl, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateActive, "Got wrong state: %d\n", state);

    hr = IAudioSessionControl2_GetState(ses1_ctl2, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateActive, "Got wrong state: %d\n", state);

    if(cap_ctl){
        hr = IAudioSessionControl2_GetState(cap_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);
    }

    hr = IAudioClient_Stop(ses1_ac1);
    ok(hr == S_OK, "Start failed: %08x\n", hr);

    hr = IAudioSessionControl2_GetState(ses1_ctl, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    hr = IAudioSessionControl2_GetState(ses1_ctl2, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    if(cap_ctl){
        hr = IAudioSessionControl2_GetState(cap_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = IAudioClient_Start(cap_ac);
        ok(hr == S_OK, "Start failed: %08x\n", hr);

        hr = IAudioSessionControl2_GetState(ses1_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = IAudioSessionControl2_GetState(ses1_ctl2, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = IAudioSessionControl2_GetState(cap_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateActive, "Got wrong state: %d\n", state);

        hr = IAudioClient_Stop(cap_ac);
        ok(hr == S_OK, "Stop failed: %08x\n", hr);

        hr = IAudioSessionControl2_GetState(ses1_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = IAudioSessionControl2_GetState(ses1_ctl2, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = IAudioSessionControl2_GetState(cap_ctl, &state);
        ok(hr == S_OK, "GetState failed: %08x\n", hr);
        ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        ref = IAudioSessionControl2_Release(cap_ctl);
        ok(ref == 0, "AudioSessionControl wasn't released: %u\n", ref);

        ref = IAudioClient_Release(cap_ac);
        ok(ref == 0, "AudioClient wasn't released: %u\n", ref);
    }

    ref = IAudioSessionControl2_Release(ses1_ctl);
    ok(ref == 0, "AudioSessionControl wasn't released: %u\n", ref);

    ref = IAudioClient_Release(ses1_ac1);
    ok(ref == 0, "AudioClient wasn't released: %u\n", ref);

    ref = IAudioClient_Release(ses1_ac2);
    ok(ref == 1, "AudioClient had wrong refcount: %u\n", ref);


    hr = IAudioSessionControl2_GetState(ses1_ctl2, &state);
    ok(hr == S_OK, "GetState failed: %08x\n", hr);
    ok(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    ref = IAudioSessionControl2_Release(ses1_ctl2);
    ok(ref == 0, "AudioSessionControl wasn't released: %u\n", ref);

    CoTaskMemFree(pwfx);
}
