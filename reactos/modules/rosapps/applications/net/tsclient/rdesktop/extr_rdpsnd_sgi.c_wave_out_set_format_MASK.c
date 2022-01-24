#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wBitsPerSample; int nChannels; int nSamplesPerSec; } ;
typedef  TYPE_2__ WAVEFORMATEX ;
struct TYPE_6__ {long long ll; } ;
struct TYPE_8__ {scalar_t__ sizeOut; TYPE_1__ value; int /*<<< orphan*/  param; } ;
typedef  int BOOL ;
typedef  TYPE_3__ ALpv ;
typedef  scalar_t__ ALport ;

/* Variables and functions */
 int /*<<< orphan*/  AL_RATE ; 
 int /*<<< orphan*/  AL_SAMPFMT_TWOSCOMP ; 
 int /*<<< orphan*/  AL_SAMPLE_16 ; 
 int /*<<< orphan*/  AL_SAMPLE_8 ; 
 int False ; 
 int True ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audioconfig ; 
 int combinedFrameSize ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int g_snd_rate ; 
 int g_swapaudio ; 
 int /*<<< orphan*/  maxFillable ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ output_port ; 
 int /*<<< orphan*/  resource ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  width ; 

BOOL
FUNC13(WAVEFORMATEX * pwfx)
{
	int channels;
	int frameSize, channelCount;
	ALpv params;

#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_set_format: init...\n");
#endif

	g_swapaudio = False;
	if (pwfx->wBitsPerSample == 8)
		width = AL_SAMPLE_8;
	else if (pwfx->wBitsPerSample == 16)
	{
		width = AL_SAMPLE_16;
		/* Do we need to swap the 16bit values? (Are we BigEndian) */
#if (defined(B_ENDIAN))
		g_swapaudio = 1;
#else
		g_swapaudio = 0;
#endif
	}

	/* Limited support to configure an opened audio port in IRIX.  The
	   number of channels is a static setting and can not be changed after
	   a port is opened.  So if the number of channels remains the same, we
	   can configure other settings; otherwise we have to reopen the audio
	   port, using same config. */

	channels = pwfx->nChannels;
	g_snd_rate = pwfx->nSamplesPerSec;

	FUNC9(audioconfig, AL_SAMPFMT_TWOSCOMP);
	FUNC10(audioconfig, width);
	if (channels != FUNC1(audioconfig))
	{
		FUNC0(output_port);
		FUNC7(audioconfig, channels);
		output_port = FUNC6("rdpsnd", "w", audioconfig);

		if (output_port == (ALport) 0)
		{
			FUNC11(stderr, "wave_out_set_format: alOpenPort failed: %s\n",
				FUNC2(FUNC12()));
			return False;
		}

	}

	resource = FUNC4(output_port);
	maxFillable = FUNC3(output_port);
	channelCount = FUNC1(audioconfig);
	frameSize = FUNC5(audioconfig);

	if (frameSize == 0 || channelCount == 0)
	{
		FUNC11(stderr, "wave_out_set_format: bad frameSize or channelCount\n");
		return False;
	}
	combinedFrameSize = frameSize * channelCount;

	params.param = AL_RATE;
	params.value.ll = (long long) g_snd_rate << 32;

	if (FUNC8(resource, &params, 1) < 0)
	{
		FUNC11(stderr, "wave_set_format: alSetParams failed: %s\n",
			FUNC2(FUNC12()));
		return False;
	}
	if (params.sizeOut < 0)
	{
		FUNC11(stderr, "wave_set_format: invalid rate %d\n", g_snd_rate);
		return False;
	}

#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_set_format: returning...\n");
#endif
	return True;
}