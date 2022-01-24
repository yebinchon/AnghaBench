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
struct TYPE_3__ {size_t ramp_size; int /*<<< orphan*/  screen_num; int /*<<< orphan*/  display; int /*<<< orphan*/ * saved_ramps; } ;
typedef  TYPE_1__ vidmode_state_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(vidmode_state_t *state)
{
	uint16_t *gamma_r = &state->saved_ramps[0*state->ramp_size];
	uint16_t *gamma_g = &state->saved_ramps[1*state->ramp_size];
	uint16_t *gamma_b = &state->saved_ramps[2*state->ramp_size];

	/* Restore gamma ramps */
	int r = FUNC0(state->display, state->screen_num,
					state->ramp_size, gamma_r, gamma_g,
					gamma_b);
	if (!r) {
		FUNC2(stderr, FUNC1("X request failed: %s\n"),
			"XF86VidModeSetGammaRamp");
	}
}