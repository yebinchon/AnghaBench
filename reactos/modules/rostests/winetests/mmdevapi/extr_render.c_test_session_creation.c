
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WAVEFORMATEX ;
typedef int ISimpleAudioVolume ;
typedef int IMMDevice ;
typedef int IAudioSessionManager ;
typedef int IAudioClient ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int AUDCLNT_SHAREMODE_SHARED ;
 int AUDCLNT_STREAMFLAGS_NOPERSIST ;
 int CLSCTX_INPROC_SERVER ;
 int CoCreateGuid (int *) ;
 int CoTaskMemFree (int *) ;
 int FALSE ;
 scalar_t__ IAudioClient_GetMixFormat (int *,int **) ;
 scalar_t__ IAudioClient_GetService (int *,int *,void**) ;
 scalar_t__ IAudioClient_Initialize (int *,int ,int ,int,int ,int *,int *) ;
 int IAudioClient_Release (int *) ;
 scalar_t__ IAudioSessionManager_GetSimpleAudioVolume (int *,int *,int ,int **) ;
 int IAudioSessionManager_Release (int *) ;
 int IID_IAudioClient ;
 int IID_IAudioSessionManager ;
 int IID_ISimpleAudioVolume ;
 scalar_t__ IMMDeviceEnumerator_GetDefaultAudioEndpoint (int ,int ,int ,int **) ;
 scalar_t__ IMMDevice_Activate (int *,int *,int ,int *,void**) ;
 int IMMDevice_Release (int *) ;
 scalar_t__ ISimpleAudioVolume_GetMasterVolume (int *,float*) ;
 int ISimpleAudioVolume_Release (int *) ;
 scalar_t__ ISimpleAudioVolume_SetMasterVolume (int *,float,int *) ;
 scalar_t__ S_OK ;
 int * dev ;
 int eCapture ;
 int eMultimedia ;
 float fabs (float) ;
 int mme ;
 int ok (int,char*,float) ;

__attribute__((used)) static void test_session_creation(void)
{
    IMMDevice *cap_dev;
    IAudioClient *ac;
    IAudioSessionManager *sesm;
    ISimpleAudioVolume *sav;
    GUID session_guid;
    float vol;
    HRESULT hr;
    WAVEFORMATEX *fmt;

    CoCreateGuid(&session_guid);

    hr = IMMDevice_Activate(dev, &IID_IAudioSessionManager,
            CLSCTX_INPROC_SERVER, ((void*)0), (void**)&sesm);
    ok((hr == S_OK)^(sesm == ((void*)0)), "Activate %08x &out pointer\n", hr);
    ok(hr == S_OK, "Activate failed: %08x\n", hr);

    hr = IAudioSessionManager_GetSimpleAudioVolume(sesm, &session_guid,
            FALSE, &sav);
    ok(hr == S_OK, "GetSimpleAudioVolume failed: %08x\n", hr);

    hr = ISimpleAudioVolume_SetMasterVolume(sav, 0.6f, ((void*)0));
    ok(hr == S_OK, "SetMasterVolume failed: %08x\n", hr);


    ISimpleAudioVolume_Release(sav);
    IAudioSessionManager_Release(sesm);



    hr = IMMDeviceEnumerator_GetDefaultAudioEndpoint(mme, eCapture,
            eMultimedia, &cap_dev);
    if(hr == S_OK){
        WAVEFORMATEX *cap_pwfx;
        IAudioClient *cap_ac;
        ISimpleAudioVolume *cap_sav;
        IAudioSessionManager *cap_sesm;

        hr = IMMDevice_Activate(cap_dev, &IID_IAudioSessionManager,
                CLSCTX_INPROC_SERVER, ((void*)0), (void**)&cap_sesm);
        ok((hr == S_OK)^(cap_sesm == ((void*)0)), "Activate %08x &out pointer\n", hr);
        ok(hr == S_OK, "Activate failed: %08x\n", hr);

        hr = IAudioSessionManager_GetSimpleAudioVolume(cap_sesm, &session_guid,
                FALSE, &cap_sav);
        ok(hr == S_OK, "GetSimpleAudioVolume failed: %08x\n", hr);

        vol = 0.5f;
        hr = ISimpleAudioVolume_GetMasterVolume(cap_sav, &vol);
        ok(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);

        ISimpleAudioVolume_Release(cap_sav);
        IAudioSessionManager_Release(cap_sesm);

        hr = IMMDevice_Activate(cap_dev, &IID_IAudioClient,
                CLSCTX_INPROC_SERVER, ((void*)0), (void**)&cap_ac);
        ok(hr == S_OK, "Activate failed: %08x\n", hr);

        IMMDevice_Release(cap_dev);

        hr = IAudioClient_GetMixFormat(cap_ac, &cap_pwfx);
        ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

        hr = IAudioClient_Initialize(cap_ac, AUDCLNT_SHAREMODE_SHARED,
                0, 5000000, 0, cap_pwfx, &session_guid);
        ok(hr == S_OK, "Initialize failed: %08x\n", hr);

        CoTaskMemFree(cap_pwfx);

        if(hr == S_OK){
            hr = IAudioClient_GetService(cap_ac, &IID_ISimpleAudioVolume,
                    (void**)&cap_sav);
            ok(hr == S_OK, "GetService failed: %08x\n", hr);
        }
        if(hr == S_OK){
            vol = 0.5f;
            hr = ISimpleAudioVolume_GetMasterVolume(cap_sav, &vol);
            ok(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);

            ISimpleAudioVolume_Release(cap_sav);
        }

        IAudioClient_Release(cap_ac);
    }

    hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            ((void*)0), (void**)&ac);
    ok((hr == S_OK)^(ac == ((void*)0)), "Activate %08x &out pointer\n", hr);
    ok(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = IAudioClient_GetMixFormat(ac, &fmt);
    ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = IAudioClient_Initialize(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_NOPERSIST, 5000000, 0, fmt, &session_guid);
    ok(hr == S_OK, "Initialize failed: %08x\n", hr);

    hr = IAudioClient_GetService(ac, &IID_ISimpleAudioVolume, (void**)&sav);
    ok(hr == S_OK, "GetService failed: %08x\n", hr);
    if(hr == S_OK){
        vol = 0.5f;
        hr = ISimpleAudioVolume_GetMasterVolume(sav, &vol);
        ok(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);
        ok(fabs(vol - 0.6f) < 0.05f, "Got wrong volume: %f\n", vol);

        ISimpleAudioVolume_Release(sav);
    }

    CoTaskMemFree(fmt);
    IAudioClient_Release(ac);
}
