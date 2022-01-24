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
struct TYPE_5__ {size_t nChannels; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  IChannelAudioVolume ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  float HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_NOPERSIST ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 float E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 float* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 float FUNC4 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 float FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 float FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 float FUNC8 (int /*<<< orphan*/ *,int,float*) ; 
 float FUNC9 (int /*<<< orphan*/ *,size_t*) ; 
 float FUNC10 (int /*<<< orphan*/ *,size_t,float*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 float FUNC12 (int /*<<< orphan*/ *,int,float*,int /*<<< orphan*/ *) ; 
 float FUNC13 (int /*<<< orphan*/ *,size_t,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IChannelAudioVolume ; 
 float FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 float NULL_PTR_ERR ; 
 float S_OK ; 
 int /*<<< orphan*/  dev ; 
 float FUNC15 (float) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 

__attribute__((used)) static void FUNC17(void)
{
    IAudioClient *ac;
    IChannelAudioVolume *acv;
    WAVEFORMATEX *fmt;
    UINT32 chans, i;
    HRESULT hr;
    float vol, *vols;

    hr = FUNC14(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac);
    FUNC16(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC4(ac, &fmt);
    FUNC16(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC6(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_NOPERSIST, 5000000, 0, fmt, NULL);
    FUNC16(hr == S_OK, "Initialize failed: %08x\n", hr);

    hr = FUNC5(ac, &IID_IChannelAudioVolume, (void**)&acv);
    FUNC16(hr == S_OK, "GetService failed: %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC9(acv, NULL);
    FUNC16(hr == NULL_PTR_ERR, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC9(acv, &chans);
    FUNC16(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
    FUNC16(chans == fmt->nChannels, "GetChannelCount gave wrong number of channels: %d\n", chans);

    hr = FUNC10(acv, fmt->nChannels, NULL);
    FUNC16(hr == NULL_PTR_ERR, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC10(acv, fmt->nChannels, &vol);
    FUNC16(hr == E_INVALIDARG, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC10(acv, 0, NULL);
    FUNC16(hr == NULL_PTR_ERR, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC10(acv, 0, &vol);
    FUNC16(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
    FUNC16(vol == 1.f, "Channel volume was not 1: %f\n", vol);

    hr = FUNC13(acv, fmt->nChannels, -1.f, NULL);
    FUNC16(hr == E_INVALIDARG, "SetChannelVolume gave wrong error: %08x\n", hr);

    hr = FUNC13(acv, 0, -1.f, NULL);
    FUNC16(hr == E_INVALIDARG, "SetChannelVolume gave wrong error: %08x\n", hr);

    hr = FUNC13(acv, 0, 2.f, NULL);
    FUNC16(hr == E_INVALIDARG, "SetChannelVolume gave wrong error: %08x\n", hr);

    hr = FUNC13(acv, 0, 0.2f, NULL);
    FUNC16(hr == S_OK, "SetChannelVolume failed: %08x\n", hr);

    hr = FUNC10(acv, 0, &vol);
    FUNC16(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
    FUNC16(FUNC15(vol - 0.2f) < 0.05f, "Channel volume wasn't 0.2: %f\n", vol);

    hr = FUNC8(acv, 0, NULL);
    FUNC16(hr == NULL_PTR_ERR, "GetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC8(acv, fmt->nChannels, NULL);
    FUNC16(hr == NULL_PTR_ERR, "GetAllVolumes gave wrong error: %08x\n", hr);

    vols = FUNC2(FUNC1(), 0, fmt->nChannels * sizeof(float));
    FUNC16(vols != NULL, "HeapAlloc failed\n");

    hr = FUNC8(acv, fmt->nChannels - 1, vols);
    FUNC16(hr == E_INVALIDARG, "GetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC8(acv, fmt->nChannels, vols);
    FUNC16(hr == S_OK, "GetAllVolumes failed: %08x\n", hr);
    FUNC16(FUNC15(vols[0] - 0.2f) < 0.05f, "Channel 0 volume wasn't 0.2: %f\n", vol);
    for(i = 1; i < fmt->nChannels; ++i)
        FUNC16(vols[i] == 1.f, "Channel %d volume is not 1: %f\n", i, vols[i]);

    hr = FUNC12(acv, 0, NULL, NULL);
    FUNC16(hr == NULL_PTR_ERR, "SetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC12(acv, fmt->nChannels, NULL, NULL);
    FUNC16(hr == NULL_PTR_ERR, "SetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC12(acv, fmt->nChannels - 1, vols, NULL);
    FUNC16(hr == E_INVALIDARG, "SetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC12(acv, fmt->nChannels, vols, NULL);
    FUNC16(hr == S_OK, "SetAllVolumes failed: %08x\n", hr);

    hr = FUNC13(acv, 0, 1.0f, NULL);
    FUNC16(hr == S_OK, "SetChannelVolume failed: %08x\n", hr);

    FUNC3(FUNC1(), 0, vols);
    FUNC11(acv);
    FUNC7(ac);
    FUNC0(fmt);
}