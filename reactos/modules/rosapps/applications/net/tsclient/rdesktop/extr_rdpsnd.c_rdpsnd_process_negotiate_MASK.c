#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int wFormatTag; unsigned int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; unsigned int nBlockAlign; unsigned int wBitsPerSample; unsigned int cbSize; int /*<<< orphan*/  cb; } ;
typedef  TYPE_2__ WAVEFORMATEX ;
struct TYPE_8__ {size_t format_count; TYPE_2__* formats; } ;
struct TYPE_10__ {TYPE_1__ rdpsnd; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ False ; 
 int MAX_CBSIZE ; 
 size_t MAX_FORMATS ; 
 int RDPSND_NEGOTIATE ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 () ; 

__attribute__((used)) static void
FUNC17(RDPCLIENT * This, STREAM in)
{
	unsigned int in_format_count, i;
	WAVEFORMATEX *format;
	STREAM out;
	BOOL device_available = False;
	int readcnt;
	int discardcnt;

	FUNC4(in, 14);	/* flags, volume, pitch, UDP port */
	FUNC1(in, in_format_count);
	FUNC4(in, 4);	/* pad, status, pad */

	if (FUNC16())
	{
		FUNC14();
		device_available = True;
	}

	This->rdpsnd.format_count = 0;
	if (FUNC12(in, 18 * in_format_count))
	{
		for (i = 0; i < in_format_count; i++)
		{
			format = &This->rdpsnd.formats[This->rdpsnd.format_count];
			FUNC1(in, format->wFormatTag);
			FUNC1(in, format->nChannels);
			FUNC2(in, format->nSamplesPerSec);
			FUNC2(in, format->nAvgBytesPerSec);
			FUNC1(in, format->nBlockAlign);
			FUNC1(in, format->wBitsPerSample);
			FUNC1(in, format->cbSize);

			/* read in the buffer of unknown use */
			readcnt = format->cbSize;
			discardcnt = 0;
			if (format->cbSize > MAX_CBSIZE)
			{
				FUNC0(stderr, "cbSize too large for buffer: %d\n",
					format->cbSize);
				readcnt = MAX_CBSIZE;
				discardcnt = format->cbSize - MAX_CBSIZE;
			}
			FUNC3(in, format->cb, readcnt);
			FUNC4(in, discardcnt);

			if (device_available && FUNC15(format))
			{
				This->rdpsnd.format_count++;
				if (This->rdpsnd.format_count == MAX_FORMATS)
					break;
			}
		}
	}

	out = FUNC10(This, RDPSND_NEGOTIATE | 0x200, 20 + 18 * This->rdpsnd.format_count);
	FUNC8(out, 3);	/* flags */
	FUNC7(out, 0xffffffff);	/* volume */
	FUNC7(out, 0);	/* pitch */
	FUNC5(out, 0);	/* UDP port */

	FUNC6(out, This->rdpsnd.format_count);
	FUNC9(out, 0x95);	/* pad? */
	FUNC6(out, 2);	/* status */
	FUNC9(out, 0x77);	/* pad? */

	for (i = 0; i < This->rdpsnd.format_count; i++)
	{
		format = &This->rdpsnd.formats[i];
		FUNC6(out, format->wFormatTag);
		FUNC6(out, format->nChannels);
		FUNC8(out, format->nSamplesPerSec);
		FUNC8(out, format->nAvgBytesPerSec);
		FUNC6(out, format->nBlockAlign);
		FUNC6(out, format->wBitsPerSample);
		FUNC5(out, 0);	/* cbSize */
	}

	FUNC13(out);
	FUNC11(This, out);
}