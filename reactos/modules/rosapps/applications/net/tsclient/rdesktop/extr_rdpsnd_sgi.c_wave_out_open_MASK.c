#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ll; } ;
struct TYPE_5__ {int /*<<< orphan*/  ll; } ;
struct TYPE_7__ {TYPE_2__ max; TYPE_1__ min; } ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  scalar_t__ ALport ;
typedef  TYPE_3__ ALparamInfo ;
typedef  scalar_t__ ALconfig ;

/* Variables and functions */
 int /*<<< orphan*/  AL_DEFAULT_OUTPUT ; 
 int /*<<< orphan*/  AL_GAIN ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ audioconfig ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ max_volume ; 
 scalar_t__ min_volume ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ output_port ; 
 scalar_t__ queue_hi ; 
 scalar_t__ queue_lo ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ volume_range ; 

BOOL
FUNC7(void)
{
	ALparamInfo pinfo;

#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_open: begin\n");
#endif

	if (FUNC2(AL_DEFAULT_OUTPUT, AL_GAIN, &pinfo) < 0)
	{
		FUNC5(stderr, "wave_out_open: alGetParamInfo failed: %s\n",
			FUNC1(FUNC6()));
	}
	min_volume = FUNC0(pinfo.min.ll);
	max_volume = FUNC0(pinfo.max.ll);
	volume_range = (max_volume - min_volume);
#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_open: minvol = %lf, maxvol= %lf, range = %lf.\n",
		min_volume, max_volume, volume_range);
#endif

	queue_lo = queue_hi = 0;

	audioconfig = FUNC3();
	if (audioconfig == (ALconfig) 0)
	{
		FUNC5(stderr, "wave_out_open: alNewConfig failed: %s\n",
			FUNC1(FUNC6()));
		return False;
	}

	output_port = FUNC4("rdpsnd", "w", 0);
	if (output_port == (ALport) 0)
	{
		FUNC5(stderr, "wave_out_open: alOpenPort failed: %s\n",
			FUNC1(FUNC6()));
		return False;
	}

#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_open: returning\n");
#endif
	return True;
}