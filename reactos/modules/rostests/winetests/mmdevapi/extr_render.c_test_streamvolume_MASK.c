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
typedef  int /*<<< orphan*/  IAudioStreamVolume ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  float HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 float E_INVALIDARG ; 
 float E_POINTER ; 
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
 float FUNC12 (int /*<<< orphan*/ *,int,float*) ; 
 float FUNC13 (int /*<<< orphan*/ *,size_t,float) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IAudioStreamVolume ; 
 float FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 float S_OK ; 
 int /*<<< orphan*/  dev ; 
 float FUNC15 (float) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 

__attribute__((used)) static void FUNC17(void)
{
    IAudioClient *ac;
    IAudioStreamVolume *asv;
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

    hr = FUNC6(ac, AUDCLNT_SHAREMODE_SHARED, 0, 5000000,
            0, fmt, NULL);
    FUNC16(hr == S_OK, "Initialize failed: %08x\n", hr);

    if(hr == S_OK){
        hr = FUNC5(ac, &IID_IAudioStreamVolume, (void**)&asv);
        FUNC16(hr == S_OK, "GetService failed: %08x\n", hr);
    }
    if(hr != S_OK){
        FUNC7(ac);
        FUNC0(fmt);
        return;
    }

    hr = FUNC9(asv, NULL);
    FUNC16(hr == E_POINTER, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC9(asv, &chans);
    FUNC16(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
    FUNC16(chans == fmt->nChannels, "GetChannelCount gave wrong number of channels: %d\n", chans);

    hr = FUNC10(asv, fmt->nChannels, NULL);
    FUNC16(hr == E_POINTER, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC10(asv, fmt->nChannels, &vol);
    FUNC16(hr == E_INVALIDARG, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC10(asv, 0, NULL);
    FUNC16(hr == E_POINTER, "GetChannelCount gave wrong error: %08x\n", hr);

    hr = FUNC10(asv, 0, &vol);
    FUNC16(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
    FUNC16(vol == 1.f, "Channel volume was not 1: %f\n", vol);

    hr = FUNC13(asv, fmt->nChannels, -1.f);
    FUNC16(hr == E_INVALIDARG, "SetChannelVolume gave wrong error: %08x\n", hr);

    hr = FUNC13(asv, 0, -1.f);
    FUNC16(hr == E_INVALIDARG, "SetChannelVolume gave wrong error: %08x\n", hr);

    hr = FUNC13(asv, 0, 2.f);
    FUNC16(hr == E_INVALIDARG, "SetChannelVolume gave wrong error: %08x\n", hr);

    hr = FUNC13(asv, 0, 0.2f);
    FUNC16(hr == S_OK, "SetChannelVolume failed: %08x\n", hr);

    hr = FUNC10(asv, 0, &vol);
    FUNC16(hr == S_OK, "GetChannelCount failed: %08x\n", hr);
    FUNC16(FUNC15(vol - 0.2f) < 0.05f, "Channel volume wasn't 0.2: %f\n", vol);

    hr = FUNC8(asv, 0, NULL);
    FUNC16(hr == E_POINTER, "GetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC8(asv, fmt->nChannels, NULL);
    FUNC16(hr == E_POINTER, "GetAllVolumes gave wrong error: %08x\n", hr);

    vols = FUNC2(FUNC1(), 0, fmt->nChannels * sizeof(float));
    FUNC16(vols != NULL, "HeapAlloc failed\n");

    hr = FUNC8(asv, fmt->nChannels - 1, vols);
    FUNC16(hr == E_INVALIDARG, "GetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC8(asv, fmt->nChannels, vols);
    FUNC16(hr == S_OK, "GetAllVolumes failed: %08x\n", hr);
    FUNC16(FUNC15(vols[0] - 0.2f) < 0.05f, "Channel 0 volume wasn't 0.2: %f\n", vol);
    for(i = 1; i < fmt->nChannels; ++i)
        FUNC16(vols[i] == 1.f, "Channel %d volume is not 1: %f\n", i, vols[i]);

    hr = FUNC12(asv, 0, NULL);
    FUNC16(hr == E_POINTER, "SetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC12(asv, fmt->nChannels, NULL);
    FUNC16(hr == E_POINTER, "SetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC12(asv, fmt->nChannels - 1, vols);
    FUNC16(hr == E_INVALIDARG, "SetAllVolumes gave wrong error: %08x\n", hr);

    hr = FUNC12(asv, fmt->nChannels, vols);
    FUNC16(hr == S_OK, "SetAllVolumes failed: %08x\n", hr);

    FUNC3(FUNC1(), 0, vols);
    FUNC11(asv);
    FUNC7(ac);
    FUNC0(fmt);
}