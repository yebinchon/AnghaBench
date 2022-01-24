#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
typedef  int /*<<< orphan*/  ISimpleAudioVolume ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  IAudioSessionManager ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_NOPERSIST ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IAudioSessionManager ; 
 int /*<<< orphan*/  IID_ISimpleAudioVolume ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * dev ; 
 int /*<<< orphan*/  eCapture ; 
 int /*<<< orphan*/  eMultimedia ; 
 float FUNC14 (float) ; 
 int /*<<< orphan*/  mme ; 
 int /*<<< orphan*/  FUNC15 (int,char*,float) ; 

__attribute__((used)) static void FUNC16(void)
{
    IMMDevice *cap_dev;
    IAudioClient *ac;
    IAudioSessionManager *sesm;
    ISimpleAudioVolume *sav;
    GUID session_guid;
    float vol;
    HRESULT hr;
    WAVEFORMATEX *fmt;

    FUNC0(&session_guid);

    hr = FUNC9(dev, &IID_IAudioSessionManager,
            CLSCTX_INPROC_SERVER, NULL, (void**)&sesm);
    FUNC15((hr == S_OK)^(sesm == NULL), "Activate %08x &out pointer\n", hr);
    FUNC15(hr == S_OK, "Activate failed: %08x\n", hr);

    hr = FUNC6(sesm, &session_guid,
            FALSE, &sav);
    FUNC15(hr == S_OK, "GetSimpleAudioVolume failed: %08x\n", hr);

    hr = FUNC13(sav, 0.6f, NULL);
    FUNC15(hr == S_OK, "SetMasterVolume failed: %08x\n", hr);

    /* Release completely to show session persistence */
    FUNC12(sav);
    FUNC7(sesm);

    /* test if we can create a capture audioclient in the session we just
     * created from a SessionManager derived from a render device */
    hr = FUNC8(mme, eCapture,
            eMultimedia, &cap_dev);
    if(hr == S_OK){
        WAVEFORMATEX *cap_pwfx;
        IAudioClient *cap_ac;
        ISimpleAudioVolume *cap_sav;
        IAudioSessionManager *cap_sesm;

        hr = FUNC9(cap_dev, &IID_IAudioSessionManager,
                CLSCTX_INPROC_SERVER, NULL, (void**)&cap_sesm);
        FUNC15((hr == S_OK)^(cap_sesm == NULL), "Activate %08x &out pointer\n", hr);
        FUNC15(hr == S_OK, "Activate failed: %08x\n", hr);

        hr = FUNC6(cap_sesm, &session_guid,
                FALSE, &cap_sav);
        FUNC15(hr == S_OK, "GetSimpleAudioVolume failed: %08x\n", hr);

        vol = 0.5f;
        hr = FUNC11(cap_sav, &vol);
        FUNC15(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);

        FUNC12(cap_sav);
        FUNC7(cap_sesm);

        hr = FUNC9(cap_dev, &IID_IAudioClient,
                CLSCTX_INPROC_SERVER, NULL, (void**)&cap_ac);
        FUNC15(hr == S_OK, "Activate failed: %08x\n", hr);

        FUNC10(cap_dev);

        hr = FUNC2(cap_ac, &cap_pwfx);
        FUNC15(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

        hr = FUNC4(cap_ac, AUDCLNT_SHAREMODE_SHARED,
                0, 5000000, 0, cap_pwfx, &session_guid);
        FUNC15(hr == S_OK, "Initialize failed: %08x\n", hr);

        FUNC1(cap_pwfx);

        if(hr == S_OK){
            hr = FUNC3(cap_ac, &IID_ISimpleAudioVolume,
                    (void**)&cap_sav);
            FUNC15(hr == S_OK, "GetService failed: %08x\n", hr);
        }
        if(hr == S_OK){
            vol = 0.5f;
            hr = FUNC11(cap_sav, &vol);
            FUNC15(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);

            FUNC12(cap_sav);
        }

        FUNC5(cap_ac);
    }

    hr = FUNC9(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac);
    FUNC15((hr == S_OK)^(ac == NULL), "Activate %08x &out pointer\n", hr);
    FUNC15(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC2(ac, &fmt);
    FUNC15(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC4(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_NOPERSIST, 5000000, 0, fmt, &session_guid);
    FUNC15(hr == S_OK, "Initialize failed: %08x\n", hr);

    hr = FUNC3(ac, &IID_ISimpleAudioVolume, (void**)&sav);
    FUNC15(hr == S_OK, "GetService failed: %08x\n", hr);
    if(hr == S_OK){
        vol = 0.5f;
        hr = FUNC11(sav, &vol);
        FUNC15(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);
        FUNC15(FUNC14(vol - 0.6f) < 0.05f, "Got wrong volume: %f\n", vol);

        FUNC12(sav);
    }

    FUNC1(fmt);
    FUNC5(ac);
}