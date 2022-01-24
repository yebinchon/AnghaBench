#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mmtime ;
struct TYPE_4__ {scalar_t__ wType; } ;
typedef  TYPE_1__ MMTIME ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  LPWAVEFORMATEX ;
typedef  int /*<<< orphan*/  HWAVEOUT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ MMSYSERR_ERROR ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ TIME_BYTES ; 
 scalar_t__ TIME_MIDI ; 
 scalar_t__ TIME_MS ; 
 scalar_t__ TIME_SAMPLES ; 
 scalar_t__ TIME_SMPTE ; 
 scalar_t__ TIME_TICKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC9(int device, HWAVEOUT wout, DWORD bytes,
                           LPWAVEFORMATEX pwfx )
{
    MMTIME mmtime;
    MMRESULT rc;
    DWORD returned;

    mmtime.wType = TIME_BYTES;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime) - 1);
    FUNC3(rc==MMSYSERR_ERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));

    mmtime.wType = TIME_BYTES;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime) + 1);
    FUNC3(rc==MMSYSERR_NOERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));
    if (mmtime.wType != TIME_BYTES && winetest_debug > 1)
        FUNC5("waveOutGetPosition(%s): TIME_BYTES not supported, returned %s\n",
              FUNC2(device),FUNC8(mmtime.wType));
    returned = FUNC4(&mmtime, pwfx);
    FUNC3(returned == bytes, "waveOutGetPosition(%s): returned %d bytes, "
       "should be %d\n", FUNC2(device), returned, bytes);

    mmtime.wType = TIME_SAMPLES;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime));
    FUNC3(rc==MMSYSERR_NOERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));
    if (mmtime.wType != TIME_SAMPLES && winetest_debug > 1)
        FUNC5("waveOutGetPosition(%s): TIME_SAMPLES not supported, "
              "returned %s\n",FUNC2(device),FUNC8(mmtime.wType));
    returned = FUNC4(&mmtime, pwfx);
    FUNC3(returned == bytes, "waveOutGetPosition(%s): returned %d samples "
       "(%d bytes), should be %d (%d bytes)\n", FUNC2(device),
       FUNC1(returned, pwfx), returned,
       FUNC1(bytes, pwfx), bytes);

    mmtime.wType = TIME_MS;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime));
    FUNC3(rc==MMSYSERR_NOERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));
    if (mmtime.wType != TIME_MS && winetest_debug > 1)
        FUNC5("waveOutGetPosition(%s): TIME_MS not supported, returned %s\n",
              FUNC2(device), FUNC8(mmtime.wType));
    returned = FUNC4(&mmtime, pwfx);
    FUNC3(returned == bytes, "waveOutGetPosition(%s): returned %d ms, "
       "(%d bytes), should be %d (%d bytes)\n", FUNC2(device),
       FUNC0(returned, pwfx), returned,
       FUNC0(bytes, pwfx), bytes);

    mmtime.wType = TIME_SMPTE;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime));
    FUNC3(rc==MMSYSERR_NOERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));
    if (mmtime.wType != TIME_SMPTE && winetest_debug > 1)
        FUNC5("waveOutGetPosition(%s): TIME_SMPTE not supported, returned %s\n",
              FUNC2(device),FUNC8(mmtime.wType));
    returned = FUNC4(&mmtime, pwfx);
    FUNC3(returned == bytes, "waveOutGetPosition(%s): SMPTE test failed\n",
       FUNC2(device));

    mmtime.wType = TIME_MIDI;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime));
    FUNC3(rc==MMSYSERR_NOERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));
    if (mmtime.wType != TIME_MIDI && winetest_debug > 1)
        FUNC5("waveOutGetPosition(%s): TIME_MIDI not supported, returned %s\n",
              FUNC2(device),FUNC8(mmtime.wType));
    returned = FUNC4(&mmtime, pwfx);
    FUNC3(returned == bytes, "waveOutGetPosition(%s): MIDI test failed\n",
       FUNC2(device));

    mmtime.wType = TIME_TICKS;
    rc=FUNC6(wout, &mmtime, sizeof(mmtime));
    FUNC3(rc==MMSYSERR_NOERROR,
       "waveOutGetPosition(%s): rc=%s\n",FUNC2(device),FUNC7(rc));
    if (mmtime.wType != TIME_TICKS && winetest_debug > 1)
        FUNC5("waveOutGetPosition(%s): TIME_TICKS not supported, returned %s\n",
              FUNC2(device),FUNC8(mmtime.wType));
    returned = FUNC4(&mmtime, pwfx);
    FUNC3(returned == bytes, "waveOutGetPosition(%s): TICKS test failed\n",
       FUNC2(device));
}