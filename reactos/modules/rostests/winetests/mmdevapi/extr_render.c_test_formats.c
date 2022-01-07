
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nSamplesPerSec; int wBitsPerSample; int nChannels; int nBlockAlign; int nAvgBytesPerSec; scalar_t__ cbSize; int wFormatTag; } ;
typedef TYPE_1__ WAVEFORMATEX ;
typedef int IAudioClient ;
typedef int HRESULT ;
typedef int AUDCLNT_SHAREMODE ;


 int ARRAY_SIZE (void***) ;
 int AUDCLNT_E_ENDPOINT_CREATE_FAILED ;
 int AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED ;
 int AUDCLNT_E_UNSUPPORTED_FORMAT ;
 int AUDCLNT_SHAREMODE_SHARED ;
 int CLSCTX_INPROC_SERVER ;
 int CoTaskMemFree (TYPE_1__*) ;
 int IAudioClient_GetMixFormat (int *,TYPE_1__**) ;
 int IAudioClient_Initialize (int *,int ,int ,int,int ,TYPE_1__*,int *) ;
 int IAudioClient_IsFormatSupported (int *,int ,TYPE_1__*,TYPE_1__**) ;
 int IAudioClient_Release (int *) ;
 int IID_IAudioClient ;
 int IMMDevice_Activate (int ,int *,int ,int *,void**) ;
 int S_FALSE ;
 int S_OK ;
 int WAVE_FORMAT_PCM ;
 scalar_t__ broken (int) ;
 int dev ;
 int hexcl ;
 int ok (int,char*,scalar_t__,...) ;
 int trace (char*,char*,scalar_t__,int,int,...) ;
 void*** win_formats ;

__attribute__((used)) static void test_formats(AUDCLNT_SHAREMODE mode)
{
    IAudioClient *ac;
    HRESULT hr, hrs;
    WAVEFORMATEX fmt, *pwfx, *pwfx2;
    int i;

    fmt.wFormatTag = WAVE_FORMAT_PCM;
    fmt.cbSize = 0;

    for(i = 0; i < ARRAY_SIZE(win_formats); i++) {
        hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
                ((void*)0), (void**)&ac);
        ok(hr == S_OK, "Activation failed with %08x\n", hr);
        if(hr != S_OK)
            continue;

        hr = IAudioClient_GetMixFormat(ac, &pwfx);
        ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

        fmt.nSamplesPerSec = win_formats[i][0];
        fmt.wBitsPerSample = win_formats[i][1];
        fmt.nChannels = win_formats[i][2];
        fmt.nBlockAlign = fmt.nChannels * fmt.wBitsPerSample / 8;
        fmt.nAvgBytesPerSec= fmt.nBlockAlign * fmt.nSamplesPerSec;

        pwfx2 = (WAVEFORMATEX*)0xDEADF00D;
        hr = IAudioClient_IsFormatSupported(ac, mode, &fmt, &pwfx2);
        hrs = hr;

        ok(hr == S_OK || (mode == AUDCLNT_SHAREMODE_SHARED
           ? hr == S_FALSE || broken(hr == AUDCLNT_E_UNSUPPORTED_FORMAT &&

               pwfx->nChannels > 2 && fmt.nSamplesPerSec == pwfx->nSamplesPerSec)
           : (hr == AUDCLNT_E_UNSUPPORTED_FORMAT || hr == hexcl)),
           "IsFormatSupported(%d, %ux%2ux%u) returns %08x\n", mode,
           fmt.nSamplesPerSec, fmt.wBitsPerSample, fmt.nChannels, hr);
        if (hr == S_OK)
            trace("IsSupported(%s, %ux%2ux%u)\n",
                  mode == AUDCLNT_SHAREMODE_SHARED ? "shared " : "exclus.",
                  fmt.nSamplesPerSec, fmt.wBitsPerSample, fmt.nChannels);


        if (mode == AUDCLNT_SHAREMODE_SHARED
            && fmt.nSamplesPerSec == pwfx->nSamplesPerSec
            && fmt.nChannels == pwfx->nChannels)
            ok(hr == S_OK, "Varying BitsPerSample %u\n", fmt.wBitsPerSample);

        ok((hr == S_FALSE)^(pwfx2 == ((void*)0)), "hr %x<->suggest %p\n", hr, pwfx2);
        if (pwfx2 == (WAVEFORMATEX*)0xDEADF00D)
            pwfx2 = ((void*)0);
        if (pwfx2) {
            ok(pwfx2->nSamplesPerSec == pwfx->nSamplesPerSec &&
               pwfx2->nChannels == pwfx->nChannels &&
               pwfx2->wBitsPerSample == pwfx->wBitsPerSample,
               "Suggestion %ux%2ux%u differs from GetMixFormat\n",
               pwfx2->nSamplesPerSec, pwfx2->wBitsPerSample, pwfx2->nChannels);
        }


        hr = IAudioClient_Initialize(ac, mode, 0, 5000000, 0, &fmt, ((void*)0));
        if ((hrs == S_OK) ^ (hr == S_OK))
            trace("Initialize (%s, %ux%2ux%u) returns %08x unlike IsFormatSupported\n",
                  mode == AUDCLNT_SHAREMODE_SHARED ? "shared " : "exclus.",
                  fmt.nSamplesPerSec, fmt.wBitsPerSample, fmt.nChannels, hr);
        if (mode == AUDCLNT_SHAREMODE_SHARED)
            ok(hrs == S_OK ? hr == S_OK : hr == AUDCLNT_E_UNSUPPORTED_FORMAT,
               "Initialize(shared,  %ux%2ux%u) returns %08x\n",
               fmt.nSamplesPerSec, fmt.wBitsPerSample, fmt.nChannels, hr);
        else if (hrs == AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED)

            ok(hrs == hexcl && (hr == AUDCLNT_E_ENDPOINT_CREATE_FAILED || hr == hrs),
               "Initialize(noexcl., %ux%2ux%u) returns %08x(%08x)\n",
               fmt.nSamplesPerSec, fmt.wBitsPerSample, fmt.nChannels, hr, hrs);
        else



            ok(hrs == S_OK ? hr == S_OK || broken(hr == AUDCLNT_E_ENDPOINT_CREATE_FAILED)
               : hr == AUDCLNT_E_ENDPOINT_CREATE_FAILED || hr == AUDCLNT_E_UNSUPPORTED_FORMAT ||
                 broken(hr == S_OK &&
                     ((fmt.nChannels == 1 && fmt.wBitsPerSample == 16) ||
                      (fmt.nSamplesPerSec == 12000 || fmt.nSamplesPerSec == 96000))),
               "Initialize(exclus., %ux%2ux%u) returns %08x\n",
               fmt.nSamplesPerSec, fmt.wBitsPerSample, fmt.nChannels, hr);
        CoTaskMemFree(pwfx2);
        CoTaskMemFree(pwfx);
        IAudioClient_Release(ac);
    }
}
