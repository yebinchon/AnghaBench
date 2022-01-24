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
struct TYPE_3__ {int /*<<< orphan*/  saved_ramps; } ;
typedef  TYPE_1__ w32gdi_state_t ;
typedef  int /*<<< orphan*/  color_setting_t ;
typedef  double WORD ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int GAMMA_RAMP_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,double*) ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (double*,double*,double*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (double*) ; 
 double* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (double*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC10(
	w32gdi_state_t *state, const color_setting_t *setting, int preserve)
{
	BOOL r;

	/* Open device context */
	HDC hDC = FUNC0(NULL);
	if (hDC == NULL) {
		FUNC5(FUNC3("Unable to open device context.\n"), stderr);
		return -1;
	}

	/* Create new gamma ramps */
	WORD *gamma_ramps = FUNC7(3*GAMMA_RAMP_SIZE*sizeof(WORD));
	if (gamma_ramps == NULL) {
		FUNC9("malloc");
		FUNC1(NULL, hDC);
		return -1;
	}

	WORD *gamma_r = &gamma_ramps[0*GAMMA_RAMP_SIZE];
	WORD *gamma_g = &gamma_ramps[1*GAMMA_RAMP_SIZE];
	WORD *gamma_b = &gamma_ramps[2*GAMMA_RAMP_SIZE];

	if (preserve) {
		/* Initialize gamma ramps from saved state */
		FUNC8(gamma_ramps, state->saved_ramps,
		       3*GAMMA_RAMP_SIZE*sizeof(WORD));
	} else {
		/* Initialize gamma ramps to pure state */
		for (int i = 0; i < GAMMA_RAMP_SIZE; i++) {
			WORD value = (double)i/GAMMA_RAMP_SIZE *
				(UINT16_MAX+1);
			gamma_r[i] = value;
			gamma_g[i] = value;
			gamma_b[i] = value;
		}
	}

	FUNC4(gamma_r, gamma_g, gamma_b, GAMMA_RAMP_SIZE,
		       setting);

	/* Set new gamma ramps */
	r = FALSE;
	for (int i = 0; i < MAX_ATTEMPTS && !r; i++) {
		/* We retry a few times before giving up because some
		   buggy drivers fail on the first invocation of
		   SetDeviceGammaRamp just to succeed on the second. */
		r = FUNC2(hDC, gamma_ramps);
	}
	if (!r) {
		FUNC5(FUNC3("Unable to set gamma ramps.\n"), stderr);
		FUNC6(gamma_ramps);
		FUNC1(NULL, hDC);
		return -1;
	}

	FUNC6(gamma_ramps);

	/* Release device context */
	FUNC1(NULL, hDC);

	return 0;
}