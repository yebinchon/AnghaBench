#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int wFormatTag; int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; int nBlockAlign; int wBitsPerSample; int cbSize; } ;
struct TYPE_7__ {int wValidBitsPerSample; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {TYPE_4__ Format; int /*<<< orphan*/  SubFormat; int /*<<< orphan*/  dwChannelMask; TYPE_2__ Samples; TYPE_1__ member_0; } ;
typedef  TYPE_3__ WAVEFORMATPCMEX ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAudioData ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  IID_IAudioData ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KSAUDIO_SPEAKER_STEREO ; 
 int /*<<< orphan*/  KSDATAFORMAT_SUBTYPE_PCM ; 
 scalar_t__ S_OK ; 
 int WAVE_FORMAT_EXTENSIBLE ; 
 int WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    IUnknown *unknown = FUNC6();
    IAudioData *audio_data = NULL;
    WAVEFORMATPCMEX wave_format = {{0}};

    HRESULT result;

    result = FUNC4(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FUNC0(result))
    {
        /* test_audiodata_query_interface handles this case */
        FUNC8("No IAudioData\n");
        goto out_unknown;
    }

    result = FUNC3(audio_data, NULL);
    FUNC7(E_POINTER == result, "got 0x%08x\n", result);

    wave_format.Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
    wave_format.Format.nChannels = 2;
    wave_format.Format.nSamplesPerSec = 44100;
    wave_format.Format.nAvgBytesPerSec = 176400;
    wave_format.Format.nBlockAlign = 4;
    wave_format.Format.wBitsPerSample = 16;
    wave_format.Format.cbSize = 22;
    wave_format.Samples.wValidBitsPerSample = 16;
    wave_format.dwChannelMask = KSAUDIO_SPEAKER_STEREO;
    wave_format.SubFormat = KSDATAFORMAT_SUBTYPE_PCM;
    result = FUNC3(audio_data, &wave_format.Format);
    FUNC7(E_INVALIDARG == result, "got 0x%08x\n", result);

    wave_format.Format.wFormatTag = WAVE_FORMAT_PCM;
    wave_format.Format.nChannels = 2;
    wave_format.Format.nSamplesPerSec = 44100;
    wave_format.Format.nAvgBytesPerSec = 176400;
    wave_format.Format.nBlockAlign = 4;
    wave_format.Format.wBitsPerSample = 16;
    wave_format.Format.cbSize = 0;
    result = FUNC3(audio_data, &wave_format.Format);
    FUNC7(S_OK == result, "got 0x%08x\n", result);

    wave_format.Format.wFormatTag = 0xdead;
    wave_format.Format.nChannels = 0xdead;
    wave_format.Format.nSamplesPerSec = 0xdeadbeef;
    wave_format.Format.nAvgBytesPerSec = 0xdeadbeef;
    wave_format.Format.nBlockAlign = 0xdead;
    wave_format.Format.wBitsPerSample = 0xdead;
    wave_format.Format.cbSize = 0xdead;
    result = FUNC1(audio_data, &wave_format.Format);
    FUNC7(S_OK == result, "got 0x%08x\n", result);
    FUNC7(WAVE_FORMAT_PCM == wave_format.Format.wFormatTag, "got %u\n", wave_format.Format.wFormatTag);
    FUNC7(2 == wave_format.Format.nChannels, "got %u\n", wave_format.Format.nChannels);
    FUNC7(44100 == wave_format.Format.nSamplesPerSec, "got %u\n", wave_format.Format.nSamplesPerSec);
    FUNC7(176400 == wave_format.Format.nAvgBytesPerSec, "got %u\n", wave_format.Format.nAvgBytesPerSec);
    FUNC7(4 == wave_format.Format.nBlockAlign, "got %u\n", wave_format.Format.nBlockAlign);
    FUNC7(16 == wave_format.Format.wBitsPerSample, "got %u\n", wave_format.Format.wBitsPerSample);
    FUNC7(0 == wave_format.Format.cbSize, "got %u\n", wave_format.Format.cbSize);

    FUNC2(audio_data);

out_unknown:
    FUNC5(unknown);
}