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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  IAudioSessionControl2 ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int AudioSessionState ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int AudioSessionStateActive ; 
 int AudioSessionStateInactive ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int E_NOINTERFACE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IAudioSessionControl ; 
 int /*<<< orphan*/  IID_IAudioSessionControl2 ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int NULL_PTR_ERR ; 
 int S_OK ; 
 int /*<<< orphan*/ * dev ; 
 int /*<<< orphan*/  eCapture ; 
 int /*<<< orphan*/  eMultimedia ; 
 int /*<<< orphan*/  mme ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

__attribute__((used)) static void FUNC16(void)
{
    IAudioClient *ses1_ac1, *ses1_ac2, *cap_ac;
    IAudioSessionControl2 *ses1_ctl, *ses1_ctl2, *cap_ctl = NULL;
    IMMDevice *cap_dev;
    GUID ses1_guid;
    AudioSessionState state;
    WAVEFORMATEX *pwfx;
    ULONG ref;
    HRESULT hr;

    hr = FUNC0(&ses1_guid);
    FUNC14(hr == S_OK, "CoCreateGuid failed: %08x\n", hr);

    hr = FUNC12(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ses1_ac1);
    FUNC14(hr == S_OK, "Activation failed with %08x\n", hr);
    if (FUNC2(hr)) return;

    hr = FUNC3(ses1_ac1, &pwfx);
    FUNC14(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC5(ses1_ac1, AUDCLNT_SHAREMODE_SHARED,
            0, 5000000, 0, pwfx, &ses1_guid);
    FUNC14(hr == S_OK, "Initialize failed: %08x\n", hr);

    if(hr == S_OK){
        hr = FUNC12(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
                NULL, (void**)&ses1_ac2);
        FUNC14(hr == S_OK, "Activation failed with %08x\n", hr);
    }
    if(hr != S_OK){
        FUNC15("Unable to open the same device twice. Skipping session tests\n");

        ref = FUNC6(ses1_ac1);
        FUNC14(ref == 0, "AudioClient wasn't released: %u\n", ref);
        FUNC1(pwfx);
        return;
    }

    hr = FUNC5(ses1_ac2, AUDCLNT_SHAREMODE_SHARED,
            0, 5000000, 0, pwfx, &ses1_guid);
    FUNC14(hr == S_OK, "Initialize failed: %08x\n", hr);

    hr = FUNC11(mme, eCapture,
            eMultimedia, &cap_dev);
    if(hr == S_OK){
        hr = FUNC12(cap_dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
                NULL, (void**)&cap_ac);
        FUNC14((hr == S_OK)^(cap_ac == NULL), "Activate %08x &out pointer\n", hr);
        FUNC14(hr == S_OK, "Activate failed: %08x\n", hr);
        FUNC13(cap_dev);
    }
    if(hr == S_OK){
        WAVEFORMATEX *cap_pwfx;

        hr = FUNC3(cap_ac, &cap_pwfx);
        FUNC14(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

        hr = FUNC5(cap_ac, AUDCLNT_SHAREMODE_SHARED,
                0, 5000000, 0, cap_pwfx, &ses1_guid);
        FUNC14(hr == S_OK, "Initialize failed for capture in rendering session: %08x\n", hr);
        FUNC1(cap_pwfx);
    }
    if(hr == S_OK){
        hr = FUNC4(cap_ac, &IID_IAudioSessionControl, (void**)&cap_ctl);
        FUNC14(hr == S_OK, "GetService failed: %08x\n", hr);
        if(FUNC2(hr))
            cap_ctl = NULL;
    }else
        FUNC15("No capture session: %08x; skipping capture device in render session tests\n", hr);

    hr = FUNC4(ses1_ac1, &IID_IAudioSessionControl2, (void**)&ses1_ctl);
    FUNC14(hr == E_NOINTERFACE, "GetService gave wrong error: %08x\n", hr);

    hr = FUNC4(ses1_ac1, &IID_IAudioSessionControl, (void**)&ses1_ctl);
    FUNC14(hr == S_OK, "GetService failed: %08x\n", hr);

    hr = FUNC4(ses1_ac1, &IID_IAudioSessionControl, (void**)&ses1_ctl2);
    FUNC14(hr == S_OK, "GetService failed: %08x\n", hr);
    FUNC14(ses1_ctl == ses1_ctl2, "Got different controls: %p %p\n", ses1_ctl, ses1_ctl2);
    ref = FUNC10(ses1_ctl2);
    FUNC14(ref != 0, "AudioSessionControl was destroyed\n");

    hr = FUNC4(ses1_ac2, &IID_IAudioSessionControl, (void**)&ses1_ctl2);
    FUNC14(hr == S_OK, "GetService failed: %08x\n", hr);

    hr = FUNC9(ses1_ctl, NULL);
    FUNC14(hr == NULL_PTR_ERR, "GetState gave wrong error: %08x\n", hr);

    hr = FUNC9(ses1_ctl, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    hr = FUNC9(ses1_ctl2, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    if(cap_ctl){
        hr = FUNC9(cap_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);
    }

    hr = FUNC7(ses1_ac1);
    FUNC14(hr == S_OK, "Start failed: %08x\n", hr);

    hr = FUNC9(ses1_ctl, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateActive, "Got wrong state: %d\n", state);

    hr = FUNC9(ses1_ctl2, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateActive, "Got wrong state: %d\n", state);

    if(cap_ctl){
        hr = FUNC9(cap_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);
    }

    hr = FUNC8(ses1_ac1);
    FUNC14(hr == S_OK, "Start failed: %08x\n", hr);

    hr = FUNC9(ses1_ctl, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    hr = FUNC9(ses1_ctl2, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    if(cap_ctl){
        hr = FUNC9(cap_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = FUNC7(cap_ac);
        FUNC14(hr == S_OK, "Start failed: %08x\n", hr);

        hr = FUNC9(ses1_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = FUNC9(ses1_ctl2, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = FUNC9(cap_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateActive, "Got wrong state: %d\n", state);

        hr = FUNC8(cap_ac);
        FUNC14(hr == S_OK, "Stop failed: %08x\n", hr);

        hr = FUNC9(ses1_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = FUNC9(ses1_ctl2, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        hr = FUNC9(cap_ctl, &state);
        FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
        FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

        ref = FUNC10(cap_ctl);
        FUNC14(ref == 0, "AudioSessionControl wasn't released: %u\n", ref);

        ref = FUNC6(cap_ac);
        FUNC14(ref == 0, "AudioClient wasn't released: %u\n", ref);
    }

    ref = FUNC10(ses1_ctl);
    FUNC14(ref == 0, "AudioSessionControl wasn't released: %u\n", ref);

    ref = FUNC6(ses1_ac1);
    FUNC14(ref == 0, "AudioClient wasn't released: %u\n", ref);

    ref = FUNC6(ses1_ac2);
    FUNC14(ref == 1, "AudioClient had wrong refcount: %u\n", ref);

    /* we've released all of our IAudioClient references, so check GetState */
    hr = FUNC9(ses1_ctl2, &state);
    FUNC14(hr == S_OK, "GetState failed: %08x\n", hr);
    FUNC14(state == AudioSessionStateInactive, "Got wrong state: %d\n", state);

    ref = FUNC10(ses1_ctl2);
    FUNC14(ref == 0, "AudioSessionControl wasn't released: %u\n", ref);

    FUNC1(pwfx);
}