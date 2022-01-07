
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_11__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_12__ {char* requested_device; char* acquired_device; float requested_volume; float gain; scalar_t__ requested_mute; int * dev; int lock; int session_events; int duck; int work; int ready; } ;
typedef TYPE_2__ aout_sys_t ;
typedef char* LPWSTR ;
typedef int * LPCGUID ;
typedef int ISimpleAudioVolume ;
typedef int IMMDeviceEnumerator ;
typedef int IAudioSessionManager2 ;
typedef int IAudioSessionManager ;
typedef int IAudioSessionControl2 ;
typedef int IAudioSessionControl ;
typedef int IAudioEndpointVolume ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int AUDCLNT_E_DEVICE_INVALIDATED ;
 int CLSCTX_ALL ;
 int CoTaskMemFree (char*) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 char* FromWide (char*) ;
 int GUID_VLC_AUD_OUT ;
 int IAudioEndpointVolume_GetVolumeRange (int *,float*,float*,float*) ;
 int IAudioEndpointVolume_Release (int *) ;
 int IAudioSessionControl2_GetSessionInstanceIdentifier (int *,char**) ;
 int IAudioSessionControl2_Release (int *) ;
 int IAudioSessionControl2_SetDuckingPreference (int *,scalar_t__) ;
 int IAudioSessionControl_RegisterAudioSessionNotification (int *,int *) ;
 int IAudioSessionControl_Release (int *) ;
 int IAudioSessionControl_SetDisplayName (int *,char*,int *) ;
 int IAudioSessionControl_UnregisterAudioSessionNotification (int *,int *) ;
 int IAudioSessionManager2_RegisterDuckNotification (int *,char*,int *) ;
 int IAudioSessionManager2_Release (int *) ;
 int IAudioSessionManager2_UnregisterDuckNotification (int *,int *) ;
 int IAudioSessionManager_GetAudioSessionControl (int *,int *,int ,int **) ;
 int IAudioSessionManager_GetSimpleAudioVolume (int *,int *,scalar_t__,int **) ;
 int IAudioSessionManager_QueryInterface (int *,int *,void**) ;
 int IAudioSessionManager_Release (int *) ;
 int IID_IAudioEndpointVolume ;
 int IID_IAudioSessionControl2 ;
 int IID_IAudioSessionManager ;
 int IID_IAudioSessionManager2 ;
 int IMMDeviceEnumerator_GetDefaultAudioEndpoint (int *,int ,int ,int **) ;
 int IMMDeviceEnumerator_GetDevice (int *,char*,int **) ;
 int IMMDevice_Activate (int *,int *,int ,int *,void**) ;
 int IMMDevice_GetId (int *,char**) ;
 int IMMDevice_Release (int *) ;
 int INFINITE ;
 int ISimpleAudioVolume_GetMasterVolume (int *,float*) ;
 int ISimpleAudioVolume_GetMute (int *,scalar_t__*) ;
 int ISimpleAudioVolume_Release (int *) ;
 int ISimpleAudioVolume_SetMasterVolume (int *,float,int *) ;
 int ISimpleAudioVolume_SetMute (int *,scalar_t__,int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SleepConditionVariableCS (int *,int *,int ) ;
 scalar_t__ TRUE ;
 char* ToWide (char*) ;
 int WakeConditionVariable (int *) ;
 int aout_DeviceReport (TYPE_1__*,char*) ;
 int aout_MuteReport (TYPE_1__*,int) ;
 int aout_VolumeReport (TYPE_1__*,int ) ;
 int assert (int ) ;
 int cbrtf (float) ;
 char* default_device ;
 char* default_device_b ;
 int eConsole ;
 int eRender ;
 int free (char*) ;
 scalar_t__ likely (int ) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int msg_Err (TYPE_1__*,char*,char*,...) ;
 scalar_t__ var_GetBool (TYPE_1__*,char*) ;
 char* var_InheritString (TYPE_1__*,char*) ;

__attribute__((used)) static HRESULT MMSession(audio_output_t *aout, IMMDeviceEnumerator *it)
{
    aout_sys_t *sys = aout->sys;
    IAudioSessionManager *manager;
    IAudioSessionControl *control;
    ISimpleAudioVolume *volume;
    IAudioEndpointVolume *endpoint;
    void *pv;
    HRESULT hr;

    assert(sys->requested_device != ((void*)0));
    assert(sys->dev == ((void*)0));



    if (sys->acquired_device != sys->requested_device
     && sys->acquired_device != default_device)
        free(sys->acquired_device);
    if (sys->requested_device != default_device)
    {
        msg_Dbg(aout, "using selected device %ls", sys->requested_device);
        hr = IMMDeviceEnumerator_GetDevice(it, sys->requested_device, &sys->dev);
        if (FAILED(hr))
            msg_Err(aout, "cannot get selected device %ls (error 0x%lX)",
                    sys->requested_device, hr);
        sys->acquired_device = sys->requested_device;
    }
    else
        hr = AUDCLNT_E_DEVICE_INVALIDATED;

    while (hr == AUDCLNT_E_DEVICE_INVALIDATED)
    {

        msg_Dbg(aout, "using default device");
        hr = IMMDeviceEnumerator_GetDefaultAudioEndpoint(it, eRender,
                                                         eConsole, &sys->dev);
        if (FAILED(hr))
        {
            msg_Err(aout, "cannot get default device (error 0x%lX)", hr);
            sys->acquired_device = ((void*)0);
        }
        else
            sys->acquired_device = default_device;
    }

    sys->requested_device = ((void*)0);
    WakeConditionVariable(&sys->ready);

    if (SUCCEEDED(hr))
    {
        LPWSTR wdevid;

        if (sys->acquired_device == default_device)
            aout_DeviceReport(aout, default_device_b);
        else
        {
            hr = IMMDevice_GetId(sys->dev, &wdevid);
            if (SUCCEEDED(hr))
            {
                char *id = FromWide(wdevid);
                CoTaskMemFree(wdevid);
                if (likely(id != ((void*)0)))
                {
                    aout_DeviceReport(aout, id);
                    free(id);
                }
            }
        }
    }
    else
    {
        msg_Err(aout, "cannot get device identifier (error 0x%lX)", hr);
        return hr;
    }


    hr = IMMDevice_Activate(sys->dev, &IID_IAudioSessionManager,
                            CLSCTX_ALL, ((void*)0), &pv);
    manager = pv;
    if (SUCCEEDED(hr))
    {
        LPCGUID guid = var_GetBool(aout, "volume-save") ? &GUID_VLC_AUD_OUT : ((void*)0);


        hr = IAudioSessionManager_GetAudioSessionControl(manager, guid, 0,
                                                         &control);
        if (SUCCEEDED(hr))
        {
            char *ua = var_InheritString(aout, "user-agent");
            if (ua != ((void*)0))
            {
                wchar_t *wua = ToWide(ua);
                if (likely(wua != ((void*)0)))
                {
                    IAudioSessionControl_SetDisplayName(control, wua, ((void*)0));
                    free(wua);
                }
                free(ua);
            }

            IAudioSessionControl_RegisterAudioSessionNotification(control,
                                                         &sys->session_events);
        }
        else
            msg_Err(aout, "cannot get session control (error 0x%lX)", hr);

        hr = IAudioSessionManager_GetSimpleAudioVolume(manager, guid, FALSE,
                                                       &volume);
        if (FAILED(hr))
            msg_Err(aout, "cannot get simple volume (error 0x%lX)", hr);


        wchar_t *siid = ((void*)0);

        hr = IAudioSessionManager_QueryInterface(manager,
                                              &IID_IAudioSessionControl2, &pv);
        if (SUCCEEDED(hr))
        {
            IAudioSessionControl2 *c2 = pv;

            IAudioSessionControl2_SetDuckingPreference(c2, FALSE);
            hr = IAudioSessionControl2_GetSessionInstanceIdentifier(c2, &siid);
            if (FAILED(hr))
                siid = ((void*)0);
            IAudioSessionControl2_Release(c2);
        }
        else
            msg_Dbg(aout, "version 2 session control unavailable");

        hr = IAudioSessionManager_QueryInterface(manager,
                                              &IID_IAudioSessionManager2, &pv);
        if (SUCCEEDED(hr))
        {
            IAudioSessionManager2 *m2 = pv;

            IAudioSessionManager2_RegisterDuckNotification(m2, siid,
                                                           &sys->duck);
            IAudioSessionManager2_Release(m2);
        }
        else
            msg_Dbg(aout, "version 2 session management unavailable");

        CoTaskMemFree(siid);
    }
    else
    {
        msg_Err(aout, "cannot activate session manager (error 0x%lX)", hr);
        control = ((void*)0);
        volume = ((void*)0);
    }

    hr = IMMDevice_Activate(sys->dev, &IID_IAudioEndpointVolume,
                            CLSCTX_ALL, ((void*)0), &pv);
    endpoint = pv;
    if (SUCCEEDED(hr))
    {
        float min, max, inc;

        hr = IAudioEndpointVolume_GetVolumeRange(endpoint, &min, &max, &inc);
        if (SUCCEEDED(hr))
            msg_Dbg(aout, "volume from %+f dB to %+f dB with %f dB increments",
                    min, max, inc);
        else
            msg_Err(aout, "cannot get volume range (error 0x%lX)", hr);
    }
    else
        msg_Err(aout, "cannot activate endpoint volume (error 0x%lX)", hr);


    while (sys->requested_device == ((void*)0))
    {
        if (volume != ((void*)0))
        {
            float level;

            level = sys->requested_volume;
            if (level >= 0.f)
            {
                hr = ISimpleAudioVolume_SetMasterVolume(volume, level, ((void*)0));
                if (FAILED(hr))
                    msg_Err(aout, "cannot set master volume (error 0x%lX)",
                            hr);
            }
            sys->requested_volume = -1.f;

            hr = ISimpleAudioVolume_GetMasterVolume(volume, &level);
            if (SUCCEEDED(hr))
                aout_VolumeReport(aout, cbrtf(level * sys->gain));
            else
                msg_Err(aout, "cannot get master volume (error 0x%lX)", hr);

            BOOL mute;

            hr = ISimpleAudioVolume_GetMute(volume, &mute);
            if (SUCCEEDED(hr))
                aout_MuteReport(aout, mute != FALSE);
            else
                msg_Err(aout, "cannot get mute (error 0x%lX)", hr);

            if (sys->requested_mute >= 0)
            {
                mute = sys->requested_mute ? TRUE : FALSE;

                hr = ISimpleAudioVolume_SetMute(volume, mute, ((void*)0));
                if (FAILED(hr))
                    msg_Err(aout, "cannot set mute (error 0x%lX)", hr);
            }
            sys->requested_mute = -1;
        }

        SleepConditionVariableCS(&sys->work, &sys->lock, INFINITE);
    }
    LeaveCriticalSection(&sys->lock);

    if (endpoint != ((void*)0))
        IAudioEndpointVolume_Release(endpoint);

    if (manager != ((void*)0))
    {
        hr = IAudioSessionManager_QueryInterface(manager,
                                              &IID_IAudioSessionManager2, &pv);
        if (SUCCEEDED(hr))
        {
            IAudioSessionManager2 *m2 = pv;

            IAudioSessionManager2_UnregisterDuckNotification(m2, &sys->duck);
            IAudioSessionManager2_Release(m2);
        }

        if (volume != ((void*)0))
            ISimpleAudioVolume_Release(volume);

        if (control != ((void*)0))
        {
            IAudioSessionControl_UnregisterAudioSessionNotification(control,
                                                         &sys->session_events);
            IAudioSessionControl_Release(control);
        }

        IAudioSessionManager_Release(manager);
    }

    EnterCriticalSection(&sys->lock);
    IMMDevice_Release(sys->dev);
    sys->dev = ((void*)0);
    return S_OK;
}
