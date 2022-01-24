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
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  float HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_NOPERSIST ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 float E_INVALIDARG ; 
 scalar_t__ FALSE ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 float FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_ISimpleAudioVolume ; 
 float FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 float FUNC6 (int /*<<< orphan*/ *,float*) ; 
 float FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 float FUNC9 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 float FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 float NULL_PTR_ERR ; 
 float S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  dev ; 
 float FUNC11 (float) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    IAudioClient *ac;
    ISimpleAudioVolume *sav;
    WAVEFORMATEX *fmt;
    HRESULT hr;
    float vol;
    BOOL mute;

    hr = FUNC5(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac);
    FUNC12(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC1(ac, &fmt);
    FUNC12(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC3(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_NOPERSIST, 5000000, 0, fmt, NULL);
    FUNC12(hr == S_OK, "Initialize failed: %08x\n", hr);

    hr = FUNC2(ac, &IID_ISimpleAudioVolume, (void**)&sav);
    FUNC12(hr == S_OK, "GetService failed: %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC6(sav, NULL);
    FUNC12(hr == NULL_PTR_ERR, "GetMasterVolume gave wrong error: %08x\n", hr);

    hr = FUNC6(sav, &vol);
    FUNC12(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);

    hr = FUNC9(sav, -1.f, NULL);
    FUNC12(hr == E_INVALIDARG, "SetMasterVolume gave wrong error: %08x\n", hr);

    hr = FUNC9(sav, 2.f, NULL);
    FUNC12(hr == E_INVALIDARG, "SetMasterVolume gave wrong error: %08x\n", hr);

    hr = FUNC9(sav, 0.2f, NULL);
    FUNC12(hr == S_OK, "SetMasterVolume failed: %08x\n", hr);

    hr = FUNC6(sav, &vol);
    FUNC12(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);
    FUNC12(FUNC11(vol - 0.2f) < 0.05f, "Master volume wasn't 0.2: %f\n", vol);

    hr = FUNC7(sav, NULL);
    FUNC12(hr == NULL_PTR_ERR, "GetMute gave wrong error: %08x\n", hr);

    mute = TRUE;
    hr = FUNC7(sav, &mute);
    FUNC12(hr == S_OK, "GetMute failed: %08x\n", hr);
    FUNC12(mute == FALSE, "Session is already muted\n");

    hr = FUNC10(sav, TRUE, NULL);
    FUNC12(hr == S_OK, "SetMute failed: %08x\n", hr);

    mute = FALSE;
    hr = FUNC7(sav, &mute);
    FUNC12(hr == S_OK, "GetMute failed: %08x\n", hr);
    FUNC12(mute == TRUE, "Session should have been muted\n");

    hr = FUNC6(sav, &vol);
    FUNC12(hr == S_OK, "GetMasterVolume failed: %08x\n", hr);
    FUNC12(FUNC11(vol - 0.2f) < 0.05f, "Master volume wasn't 0.2: %f\n", vol);

    hr = FUNC9(sav, 1.f, NULL);
    FUNC12(hr == S_OK, "SetMasterVolume failed: %08x\n", hr);

    mute = FALSE;
    hr = FUNC7(sav, &mute);
    FUNC12(hr == S_OK, "GetMute failed: %08x\n", hr);
    FUNC12(mute == TRUE, "Session should have been muted\n");

    hr = FUNC10(sav, FALSE, NULL);
    FUNC12(hr == S_OK, "SetMute failed: %08x\n", hr);

    FUNC8(sav);
    FUNC4(ac);
    FUNC0(fmt);
}