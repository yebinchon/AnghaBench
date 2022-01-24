#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_run_args {int verbose; void* test_demux_controls; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_run_args*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct vlc_run_args *args)
{
    FUNC2(args, 0, sizeof(struct vlc_run_args));
    args->verbose = FUNC1("V");
    if (args->verbose >= 10)
        args->verbose = 9;

    args->name = FUNC0("VLC_TARGET");
    args->test_demux_controls = FUNC1("VLC_DEMUX_CONTROLS");
}