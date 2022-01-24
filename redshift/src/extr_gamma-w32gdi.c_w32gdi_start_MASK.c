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
struct TYPE_3__ {int /*<<< orphan*/ * saved_ramps; } ;
typedef  TYPE_1__ w32gdi_state_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CM_GAMMA_RAMP ; 
 int /*<<< orphan*/  COLORMGMTCAPS ; 
 int GAMMA_RAMP_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC8(w32gdi_state_t *state)
{
	BOOL r;

	/* Open device context */
	HDC hDC = FUNC0(NULL);
	if (hDC == NULL) {
		FUNC5(FUNC4("Unable to open device context.\n"), stderr);
		return -1;
	}

	/* Check support for gamma ramps */
	int cmcap = FUNC1(hDC, COLORMGMTCAPS);
	if (cmcap != CM_GAMMA_RAMP) {
		FUNC5(FUNC4("Display device does not support gamma ramps.\n"),
		      stderr);
		return -1;
	}

	/* Allocate space for saved gamma ramps */
	state->saved_ramps = FUNC6(3*GAMMA_RAMP_SIZE*sizeof(WORD));
	if (state->saved_ramps == NULL) {
		FUNC7("malloc");
		FUNC3(NULL, hDC);
		return -1;
	}

	/* Save current gamma ramps so we can restore them at program exit */
	r = FUNC2(hDC, state->saved_ramps);
	if (!r) {
		FUNC5(FUNC4("Unable to save current gamma ramp.\n"), stderr);
		FUNC3(NULL, hDC);
		return -1;
	}

	/* Release device context */
	FUNC3(NULL, hDC);

	return 0;
}