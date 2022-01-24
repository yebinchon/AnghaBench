#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nChannels; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ISimpleAudioVolume ;
typedef  int /*<<< orphan*/  IChannelAudioVolume ;
typedef  int /*<<< orphan*/  IAudioStreamVolume ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  float HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_NOPERSIST ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 float FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 float FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 float FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 float FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 float FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 float FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 float FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 float FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IAudioStreamVolume ; 
 int /*<<< orphan*/  IID_IChannelAudioVolume ; 
 int /*<<< orphan*/  IID_ISimpleAudioVolume ; 
 float FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 float FUNC15 (int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 float FUNC17 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 float S_OK ; 
 int /*<<< orphan*/  dev ; 
 float FUNC18 (float) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,float,...) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static void FUNC21(void)
{
    IAudioClient *ac, *ac2;
    ISimpleAudioVolume *sav;
    IChannelAudioVolume *cav;
    IAudioStreamVolume *asv;
    WAVEFORMATEX *fmt;
    HRESULT hr;
    float vol;
    GUID session;
    UINT32 nch;

    hr = FUNC0(&session);
    FUNC19(hr == S_OK, "CoCreateGuid failed: %08x\n", hr);

    hr = FUNC14(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac);
    FUNC19(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC2(ac, &fmt);
    FUNC19(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC4(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_NOPERSIST, 5000000, 0, fmt, &session);
    FUNC19(hr == S_OK, "Initialize failed: %08x\n", hr);

    if(hr == S_OK){
        hr = FUNC3(ac, &IID_ISimpleAudioVolume, (void**)&sav);
        FUNC19(hr == S_OK, "GetService (SimpleAudioVolume) failed: %08x\n", hr);
    }
    if(hr != S_OK){
        FUNC5(ac);
        FUNC1(fmt);
        return;
    }

    hr = FUNC3(ac, &IID_IChannelAudioVolume, (void**)&cav);
    FUNC19(hr == S_OK, "GetService (ChannelAudioVolume) failed: %08x\n", hr);

    hr = FUNC3(ac, &IID_IAudioStreamVolume, (void**)&asv);
    FUNC19(hr == S_OK, "GetService (AudioStreamVolume) failed: %08x\n", hr);

    hr = FUNC9(asv, 0, 0.2f);
    FUNC19(hr == S_OK, "ASV_SetChannelVolume failed: %08x\n", hr);

    hr = FUNC13(cav, 0, 0.4f, NULL);
    FUNC19(hr == S_OK, "CAV_SetChannelVolume failed: %08x\n", hr);

    hr = FUNC17(sav, 0.6f, NULL);
    FUNC19(hr == S_OK, "SAV_SetMasterVolume failed: %08x\n", hr);

    hr = FUNC7(asv, 0, &vol);
    FUNC19(hr == S_OK, "ASV_GetChannelVolume failed: %08x\n", hr);
    FUNC19(FUNC18(vol - 0.2f) < 0.05f, "ASV_GetChannelVolume gave wrong volume: %f\n", vol);

    hr = FUNC11(cav, 0, &vol);
    FUNC19(hr == S_OK, "CAV_GetChannelVolume failed: %08x\n", hr);
    FUNC19(FUNC18(vol - 0.4f) < 0.05f, "CAV_GetChannelVolume gave wrong volume: %f\n", vol);

    hr = FUNC15(sav, &vol);
    FUNC19(hr == S_OK, "SAV_GetMasterVolume failed: %08x\n", hr);
    FUNC19(FUNC18(vol - 0.6f) < 0.05f, "SAV_GetMasterVolume gave wrong volume: %f\n", vol);

    hr = FUNC14(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac2);
    FUNC19(hr == S_OK, "Activation failed with %08x\n", hr);

    if(hr == S_OK){
        hr = FUNC4(ac2, AUDCLNT_SHAREMODE_SHARED,
                AUDCLNT_STREAMFLAGS_NOPERSIST, 5000000, 0, fmt, &session);
        FUNC19(hr == S_OK, "Initialize failed: %08x\n", hr);
        if(hr != S_OK)
            FUNC5(ac2);
    }

    if(hr == S_OK){
        IChannelAudioVolume *cav2;
        IAudioStreamVolume *asv2;

        hr = FUNC3(ac2, &IID_IChannelAudioVolume, (void**)&cav2);
        FUNC19(hr == S_OK, "GetService failed: %08x\n", hr);

        hr = FUNC3(ac2, &IID_IAudioStreamVolume, (void**)&asv2);
        FUNC19(hr == S_OK, "GetService failed: %08x\n", hr);

        hr = FUNC11(cav2, 0, &vol);
        FUNC19(hr == S_OK, "CAV_GetChannelVolume failed: %08x\n", hr);
        FUNC19(FUNC18(vol - 0.4f) < 0.05f, "CAV_GetChannelVolume gave wrong volume: %f\n", vol);

        hr = FUNC7(asv2, 0, &vol);
        FUNC19(hr == S_OK, "ASV_GetChannelVolume failed: %08x\n", hr);
        FUNC19(vol == 1.f, "ASV_GetChannelVolume gave wrong volume: %f\n", vol);

        hr = FUNC10(cav2, &nch);
        FUNC19(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
        FUNC19(nch == fmt->nChannels, "Got wrong channel count, expected %u: %u\n", fmt->nChannels, nch);

        hr = FUNC6(asv2, &nch);
        FUNC19(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
        FUNC19(nch == fmt->nChannels, "Got wrong channel count, expected %u: %u\n", fmt->nChannels, nch);

        FUNC8(asv2);
        FUNC12(cav2);
        FUNC5(ac2);
    }else
        FUNC20("Unable to open the same device twice. Skipping session volume control tests\n");

    hr = FUNC13(cav, 0, 1.f, NULL);
    FUNC19(hr == S_OK, "CAV_SetChannelVolume failed: %08x\n", hr);

    hr = FUNC17(sav, 1.f, NULL);
    FUNC19(hr == S_OK, "SAV_SetMasterVolume failed: %08x\n", hr);

    FUNC1(fmt);
    FUNC16(sav);
    FUNC12(cav);
    FUNC8(asv);
    FUNC5(ac);
}