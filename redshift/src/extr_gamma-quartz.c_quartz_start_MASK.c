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
typedef  int uint32_t ;
struct TYPE_5__ {int display_count; TYPE_1__* displays; } ;
typedef  TYPE_2__ quartz_state_t ;
typedef  int /*<<< orphan*/  quartz_display_state_t ;
struct TYPE_4__ {float* saved_ramps; int ramp_size; int /*<<< orphan*/  display; } ;
typedef  scalar_t__ CGError ;
typedef  int /*<<< orphan*/  CGDirectDisplayID ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,float*,float*,float*,int*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ kCGErrorSuccess ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC9(quartz_state_t *state)
{
	CGError error;
	uint32_t display_count;

	/* Get display count */
	error = FUNC2(0, NULL, &display_count);
	if (error != kCGErrorSuccess) return -1;

	state->display_count = display_count;

	CGDirectDisplayID* displays =
		FUNC7(sizeof(CGDirectDisplayID)*display_count);
	if (displays == NULL) {
		FUNC8("malloc");
		return -1;
	}

	/* Get list of displays */
	error = FUNC2(display_count, displays,
				       &display_count);
	if (error != kCGErrorSuccess) {
		FUNC6(displays);
		return -1;
	}

	/* Allocate list of display state */
	state->displays = FUNC7(display_count *
				 sizeof(quartz_display_state_t));
	if (state->displays == NULL) {
		FUNC8("malloc");
		FUNC6(displays);
		return -1;
	}

	/* Copy display indentifiers to display state */
	for (int i = 0; i < display_count; i++) {
		state->displays[i].display = displays[i];
		state->displays[i].saved_ramps = NULL;
	}

	FUNC6(displays);

	/* Save gamma ramps for all displays in display state */
	for (int i = 0; i < display_count; i++) {
		CGDirectDisplayID display = state->displays[i].display;

		uint32_t ramp_size = FUNC0(display);
		if (ramp_size == 0) {
			FUNC4(stderr, FUNC3("Gamma ramp size too small: %i\n"),
				ramp_size);
			return -1;
		}

		state->displays[i].ramp_size = ramp_size;

		/* Allocate space for saved ramps */
		state->displays[i].saved_ramps =
			FUNC7(3 * ramp_size * sizeof(float));
		if (state->displays[i].saved_ramps == NULL) {
			FUNC8("malloc");
			return -1;
		}

		float *gamma_r = &state->displays[i].saved_ramps[0*ramp_size];
		float *gamma_g = &state->displays[i].saved_ramps[1*ramp_size];
		float *gamma_b = &state->displays[i].saved_ramps[2*ramp_size];

		/* Copy the ramps to allocated space */
		uint32_t sample_count;
		error = FUNC1(display, ramp_size,
						    gamma_r, gamma_g, gamma_b,
						    &sample_count);
		if (error != kCGErrorSuccess ||
		    sample_count != ramp_size) {
			FUNC5(FUNC3("Unable to save current gamma ramp.\n"),
			      stderr);
			return -1;
		}
	}

	return 0;
}