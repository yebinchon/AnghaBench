#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct TYPE_11__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_12__ {char* requested_device; char* acquired_device; float requested_volume; float gain; scalar_t__ requested_mute; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  session_events; int /*<<< orphan*/  duck; int /*<<< orphan*/  work; int /*<<< orphan*/  ready; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/ * LPCGUID ;
typedef  int /*<<< orphan*/  ISimpleAudioVolume ;
typedef  int /*<<< orphan*/  IMMDeviceEnumerator ;
typedef  int /*<<< orphan*/  IAudioSessionManager2 ;
typedef  int /*<<< orphan*/  IAudioSessionManager ;
typedef  int /*<<< orphan*/  IAudioSessionControl2 ;
typedef  int /*<<< orphan*/  IAudioSessionControl ;
typedef  int /*<<< orphan*/  IAudioEndpointVolume ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_E_DEVICE_INVALIDATED ; 
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  GUID_VLC_AUD_OUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioEndpointVolume ; 
 int /*<<< orphan*/  IID_IAudioSessionControl2 ; 
 int /*<<< orphan*/  IID_IAudioSessionManager ; 
 int /*<<< orphan*/  IID_IAudioSessionManager2 ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 char* FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (float) ; 
 char* default_device ; 
 char* default_device_b ; 
 int /*<<< orphan*/  eConsole ; 
 int /*<<< orphan*/  eRender ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_1__*,char*,char*,...) ; 
 scalar_t__ FUNC44 (TYPE_1__*,char*) ; 
 char* FUNC45 (TYPE_1__*,char*) ; 

__attribute__((used)) static HRESULT FUNC46(audio_output_t *aout, IMMDeviceEnumerator *it)
{
    aout_sys_t *sys = aout->sys;
    IAudioSessionManager *manager;
    IAudioSessionControl *control;
    ISimpleAudioVolume *volume;
    IAudioEndpointVolume *endpoint;
    void *pv;
    HRESULT hr;

    FUNC38(sys->requested_device != NULL);
    FUNC38(sys->dev == NULL);

    /* Yes, it's perfectly valid to request the same device, see Start()
     * comments. */
    if (sys->acquired_device != sys->requested_device
     && sys->acquired_device != default_device)
        FUNC40(sys->acquired_device);
    if (sys->requested_device != default_device) /* Device selected explicitly */
    {
        FUNC42(aout, "using selected device %ls", sys->requested_device);
        hr = FUNC21(it, sys->requested_device, &sys->dev);
        if (FUNC2(hr))
            FUNC43(aout, "cannot get selected device %ls (error 0x%lX)",
                    sys->requested_device, hr);
        sys->acquired_device = sys->requested_device;
    }
    else
        hr = AUDCLNT_E_DEVICE_INVALIDATED;

    while (hr == AUDCLNT_E_DEVICE_INVALIDATED)
    {   /* Default device selected by policy and with stream routing.
         * "Do not use eMultimedia" says MSDN. */
        FUNC42(aout, "using default device");
        hr = FUNC20(it, eRender,
                                                         eConsole, &sys->dev);
        if (FUNC2(hr))
        {
            FUNC43(aout, "cannot get default device (error 0x%lX)", hr);
            sys->acquired_device = NULL;
        }
        else
            sys->acquired_device = default_device;
    }

    sys->requested_device = NULL;
    FUNC34(&sys->ready);

    if (FUNC31(hr))
    {   /* Report actual device */
        LPWSTR wdevid;

        if (sys->acquired_device == default_device)
            FUNC35(aout, default_device_b);
        else
        {
            hr = FUNC23(sys->dev, &wdevid);
            if (FUNC31(hr))
            {
                char *id = FUNC3(wdevid);
                FUNC0(wdevid);
                if (FUNC41(id != NULL))
                {
                    FUNC35(aout, id);
                    FUNC40(id);
                }
            }
        }
    }
    else
    {
        FUNC43(aout, "cannot get device identifier (error 0x%lX)", hr);
        return hr;
    }

    /* Create session manager (for controls even w/o active audio client) */
    hr = FUNC22(sys->dev, &IID_IAudioSessionManager,
                            CLSCTX_ALL, NULL, &pv);
    manager = pv;
    if (FUNC31(hr))
    {
        LPCGUID guid = FUNC44(aout, "volume-save") ? &GUID_VLC_AUD_OUT : NULL;

        /* Register session control */
        hr = FUNC16(manager, guid, 0,
                                                         &control);
        if (FUNC31(hr))
        {
            char *ua = FUNC45(aout, "user-agent");
            if (ua != NULL)
            {
                wchar_t *wua = FUNC33(ua);
                if (FUNC41(wua != NULL))
                {
                    FUNC11(control, wua, NULL);
                    FUNC40(wua);
                }
                FUNC40(ua);
            }

            FUNC9(control,
                                                         &sys->session_events);
        }
        else
            FUNC43(aout, "cannot get session control (error 0x%lX)", hr);

        hr = FUNC17(manager, guid, FALSE,
                                                       &volume);
        if (FUNC2(hr))
            FUNC43(aout, "cannot get simple volume (error 0x%lX)", hr);

        /* Try to get version 2 (Windows 7) of the manager & control */
        wchar_t *siid = NULL;

        hr = FUNC18(manager,
                                              &IID_IAudioSessionControl2, &pv);
        if (FUNC31(hr))
        {
            IAudioSessionControl2 *c2 = pv;

            FUNC8(c2, FALSE);
            hr = FUNC6(c2, &siid);
            if (FUNC2(hr))
                siid = NULL;
            FUNC7(c2);
        }
        else
            FUNC42(aout, "version 2 session control unavailable");

        hr = FUNC18(manager,
                                              &IID_IAudioSessionManager2, &pv);
        if (FUNC31(hr))
        {
            IAudioSessionManager2 *m2 = pv;

            FUNC13(m2, siid,
                                                           &sys->duck);
            FUNC14(m2);
        }
        else
            FUNC42(aout, "version 2 session management unavailable");

        FUNC0(siid);
    }
    else
    {
        FUNC43(aout, "cannot activate session manager (error 0x%lX)", hr);
        control = NULL;
        volume = NULL;
    }

    hr = FUNC22(sys->dev, &IID_IAudioEndpointVolume,
                            CLSCTX_ALL, NULL, &pv);
    endpoint = pv;
    if (FUNC31(hr))
    {
        float min, max, inc;

        hr = FUNC4(endpoint, &min, &max, &inc);
        if (FUNC31(hr))
            FUNC42(aout, "volume from %+f dB to %+f dB with %f dB increments",
                    min, max, inc);
        else
            FUNC43(aout, "cannot get volume range (error 0x%lX)", hr);
    }
    else
        FUNC43(aout, "cannot activate endpoint volume (error 0x%lX)", hr);

    /* Main loop (adjust volume as long as device is unchanged) */
    while (sys->requested_device == NULL)
    {
        if (volume != NULL)
        {
            float level;

            level = sys->requested_volume;
            if (level >= 0.f)
            {
                hr = FUNC28(volume, level, NULL);
                if (FUNC2(hr))
                    FUNC43(aout, "cannot set master volume (error 0x%lX)",
                            hr);
            }
            sys->requested_volume = -1.f;

            hr = FUNC25(volume, &level);
            if (FUNC31(hr))
                FUNC37(aout, FUNC39(level * sys->gain));
            else
                FUNC43(aout, "cannot get master volume (error 0x%lX)", hr);

            BOOL mute;

            hr = FUNC26(volume, &mute);
            if (FUNC31(hr))
                FUNC36(aout, mute != FALSE);
            else
                FUNC43(aout, "cannot get mute (error 0x%lX)", hr);

            if (sys->requested_mute >= 0)
            {
                mute = sys->requested_mute ? TRUE : FALSE;

                hr = FUNC29(volume, mute, NULL);
                if (FUNC2(hr))
                    FUNC43(aout, "cannot set mute (error 0x%lX)", hr);
            }
            sys->requested_mute = -1;
        }

        FUNC32(&sys->work, &sys->lock, INFINITE);
    }
    FUNC30(&sys->lock);

    if (endpoint != NULL)
        FUNC5(endpoint);

    if (manager != NULL)
    {   /* Deregister callbacks *without* the lock */
        hr = FUNC18(manager,
                                              &IID_IAudioSessionManager2, &pv);
        if (FUNC31(hr))
        {
            IAudioSessionManager2 *m2 = pv;

            FUNC15(m2, &sys->duck);
            FUNC14(m2);
        }

        if (volume != NULL)
            FUNC27(volume);

        if (control != NULL)
        {
            FUNC12(control,
                                                         &sys->session_events);
            FUNC10(control);
        }

        FUNC19(manager);
    }

    FUNC1(&sys->lock);
    FUNC24(sys->dev);
    sys->dev = NULL;
    return S_OK;
}