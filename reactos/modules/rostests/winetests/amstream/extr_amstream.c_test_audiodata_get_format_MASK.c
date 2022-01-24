#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int wFormatTag; int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; int nBlockAlign; int wBitsPerSample; int cbSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAudioData ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioData ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IUnknown *unknown = FUNC5();
    IAudioData *audio_data = NULL;
    WAVEFORMATEX wave_format = {0};

    HRESULT result;

    result = FUNC3(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FUNC0(result))
    {
        /* test_audiodata_query_interface handles this case */
        FUNC7("No IAudioData\n");
        goto out_unknown;
    }

    result = FUNC1(audio_data, NULL);
    FUNC6(E_POINTER == result, "got 0x%08x\n", result);

    wave_format.wFormatTag = 0xdead;
    wave_format.nChannels = 0xdead;
    wave_format.nSamplesPerSec = 0xdeadbeef;
    wave_format.nAvgBytesPerSec = 0xdeadbeef;
    wave_format.nBlockAlign = 0xdead;
    wave_format.wBitsPerSample = 0xdead;
    wave_format.cbSize = 0xdead;
    result = FUNC1(audio_data, &wave_format);
    FUNC6(S_OK == result, "got 0x%08x\n", result);
    FUNC6(WAVE_FORMAT_PCM == wave_format.wFormatTag, "got %u\n", wave_format.wFormatTag);
    FUNC6(1 == wave_format.nChannels, "got %u\n", wave_format.nChannels);
    FUNC6(11025 == wave_format.nSamplesPerSec, "got %u\n", wave_format.nSamplesPerSec);
    FUNC6(22050 == wave_format.nAvgBytesPerSec, "got %u\n", wave_format.nAvgBytesPerSec);
    FUNC6(2 == wave_format.nBlockAlign, "got %u\n", wave_format.nBlockAlign);
    FUNC6(16 == wave_format.wBitsPerSample, "got %u\n", wave_format.wBitsPerSample);
    FUNC6(0 == wave_format.cbSize, "got %u\n", wave_format.cbSize);

    FUNC2(audio_data);

out_unknown:
    FUNC4(unknown);
}