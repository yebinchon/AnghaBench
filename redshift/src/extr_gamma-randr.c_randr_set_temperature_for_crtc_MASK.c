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
typedef  int /*<<< orphan*/  xcb_void_cookie_t ;
typedef  int /*<<< orphan*/  xcb_randr_crtc_t ;
struct TYPE_7__ {int error_code; } ;
typedef  TYPE_2__ xcb_generic_error_t ;
typedef  double uint16_t ;
struct TYPE_8__ {int crtc_count; int /*<<< orphan*/  conn; TYPE_1__* crtcs; } ;
typedef  TYPE_3__ randr_state_t ;
typedef  int /*<<< orphan*/  color_setting_t ;
struct TYPE_6__ {unsigned int ramp_size; int /*<<< orphan*/  saved_ramps; int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int UINT16_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (double*,double*,double*,unsigned int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (double*) ; 
 double* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (double*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,double*,double*,double*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(
	randr_state_t *state, int crtc_num, const color_setting_t *setting,
	int preserve)
{
	xcb_generic_error_t *error;

	if (crtc_num >= state->crtc_count || crtc_num < 0) {
		FUNC2(stderr, FUNC0("CRTC %d does not exist. "),
			crtc_num);
		if (state->crtc_count > 1) {
			FUNC2(stderr, FUNC0("Valid CRTCs are [0-%d].\n"),
				state->crtc_count-1);
		} else {
			FUNC2(stderr, "%s", FUNC0("Only CRTC 0 exists.\n"));
		}

		return -1;
	}

	xcb_randr_crtc_t crtc = state->crtcs[crtc_num].crtc;
	unsigned int ramp_size = state->crtcs[crtc_num].ramp_size;

	/* Create new gamma ramps */
	uint16_t *gamma_ramps = FUNC4(3*ramp_size*sizeof(uint16_t));
	if (gamma_ramps == NULL) {
		FUNC6("malloc");
		return -1;
	}

	uint16_t *gamma_r = &gamma_ramps[0*ramp_size];
	uint16_t *gamma_g = &gamma_ramps[1*ramp_size];
	uint16_t *gamma_b = &gamma_ramps[2*ramp_size];

	if (preserve) {
		/* Initialize gamma ramps from saved state */
		FUNC5(gamma_ramps, state->crtcs[crtc_num].saved_ramps,
		       3*ramp_size*sizeof(uint16_t));
	} else {
		/* Initialize gamma ramps to pure state */
		for (int i = 0; i < ramp_size; i++) {
			uint16_t value = (double)i/ramp_size * (UINT16_MAX+1);
			gamma_r[i] = value;
			gamma_g[i] = value;
			gamma_b[i] = value;
		}
	}

	FUNC1(gamma_r, gamma_g, gamma_b, ramp_size,
		       setting);

	/* Set new gamma ramps */
	xcb_void_cookie_t gamma_set_cookie =
		FUNC7(state->conn, crtc,
						 ramp_size, gamma_r,
						 gamma_g, gamma_b);
	error = FUNC8(state->conn, gamma_set_cookie);

	if (error) {
		FUNC2(stderr, FUNC0("`%s' returned error %d\n"),
			"RANDR Set CRTC Gamma", error->error_code);
		FUNC3(gamma_ramps);
		return -1;
	}

	FUNC3(gamma_ramps);

	return 0;
}