#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int channels; int precision; scalar_t__ error; scalar_t__ eof; scalar_t__ samples; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  encoding; } ;
struct TYPE_9__ {TYPE_1__ play; } ;
typedef  TYPE_2__ audio_info_t ;
struct TYPE_10__ {int wBitsPerSample; int nChannels; int /*<<< orphan*/  nSamplesPerSec; } ;
typedef  TYPE_3__ WAVEFORMATEX ;
struct TYPE_11__ {int /*<<< orphan*/  dsp_; } ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_DRAIN ; 
 int /*<<< orphan*/  AUDIO_ENCODING_LINEAR ; 
 int /*<<< orphan*/  AUDIO_ENCODING_LINEAR8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  AUDIO_SETINFO ; 
 void* False ; 
 TYPE_6__* This ; 
 void* True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* g_reopened ; 
 int g_samplewidth ; 
 int g_swapaudio ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

BOOL
FUNC4(WAVEFORMATEX * pwfx)
{
	audio_info_t info;

	FUNC2(This->dsp_, AUDIO_DRAIN, 0);
	g_swapaudio = False;
	FUNC0(&info);


	if (pwfx->wBitsPerSample == 8)
	{
		info.play.encoding = AUDIO_ENCODING_LINEAR8;
	}
	else if (pwfx->wBitsPerSample == 16)
	{
		info.play.encoding = AUDIO_ENCODING_LINEAR;
		/* Do we need to swap the 16bit values? (Are we BigEndian) */
#ifdef B_ENDIAN
		g_swapaudio = 1;
#else
		g_swapaudio = 0;
#endif
	}

	g_samplewidth = pwfx->wBitsPerSample / 8;

	if (pwfx->nChannels == 1)
	{
		info.play.channels = 1;
	}
	else if (pwfx->nChannels == 2)
	{
		info.play.channels = 2;
		g_samplewidth *= 2;
	}

	info.play.sample_rate = pwfx->nSamplesPerSec;
	info.play.precision = pwfx->wBitsPerSample;
	info.play.samples = 0;
	info.play.eof = 0;
	info.play.error = 0;
	g_reopened = True;

	if (FUNC2(This->dsp_, AUDIO_SETINFO, &info) == -1)
	{
		FUNC3("AUDIO_SETINFO");
		FUNC1(This->dsp_);
		return False;
	}

	return True;
}