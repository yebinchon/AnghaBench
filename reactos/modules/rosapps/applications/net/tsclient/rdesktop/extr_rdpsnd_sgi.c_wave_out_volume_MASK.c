#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
struct TYPE_4__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_5__ {int sizeIn; TYPE_1__ value; int /*<<< orphan*/  param; } ;
typedef  TYPE_2__ ALpv ;
typedef  int /*<<< orphan*/  ALfixed ;

/* Variables and functions */
 int /*<<< orphan*/  AL_DEFAULT_OUTPUT ; 
 int /*<<< orphan*/  AL_GAIN ; 
 double IRIX_MAX_VOL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ min_volume ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 double volume_range ; 

void
FUNC5(uint16 left, uint16 right)
{
	double gainleft, gainright;
	ALpv pv[1];
	ALfixed gain[8];

#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_volume: begin\n");
	fprintf(stderr, "left='%d', right='%d'\n", left, right);
#endif

	gainleft = (double) left / IRIX_MAX_VOL;
	gainright = (double) right / IRIX_MAX_VOL;

	gain[0] = FUNC0(min_volume + gainleft * volume_range);
	gain[1] = FUNC0(min_volume + gainright * volume_range);

	pv[0].param = AL_GAIN;
	pv[0].value.ptr = gain;
	pv[0].sizeIn = 8;
	if (FUNC2(AL_DEFAULT_OUTPUT, pv, 1) < 0)
	{
		FUNC3(stderr, "wave_out_volume: alSetParams failed: %s\n",
			FUNC1(FUNC4()));
		return;
	}

#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_volume: returning\n");
#endif
}