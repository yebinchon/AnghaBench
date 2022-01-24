#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_setup_t ;
struct TYPE_25__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef  TYPE_2__ xcb_screen_iterator_t ;
struct TYPE_26__ {int num_crtcs; unsigned int size; } ;
typedef  TYPE_3__ xcb_randr_get_screen_resources_current_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_current_cookie_t ;
typedef  TYPE_3__ xcb_randr_get_crtc_gamma_size_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_crtc_gamma_size_cookie_t ;
typedef  TYPE_3__ xcb_randr_get_crtc_gamma_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_crtc_gamma_cookie_t ;
typedef  int /*<<< orphan*/  xcb_randr_crtc_t ;
struct TYPE_27__ {int error_code; } ;
typedef  TYPE_6__ xcb_generic_error_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_28__ {int screen_num; int preferred_screen; int crtc_count; TYPE_22__* crtcs; int /*<<< orphan*/  conn; TYPE_1__* screen; } ;
typedef  TYPE_7__ randr_state_t ;
typedef  int /*<<< orphan*/  randr_crtc_state_t ;
struct TYPE_24__ {unsigned int ramp_size; int /*<<< orphan*/ * saved_ramps; int /*<<< orphan*/  crtc; } ;
struct TYPE_23__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 TYPE_22__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_3__*) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 TYPE_2__ FUNC19 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC20(randr_state_t *state)
{
	xcb_generic_error_t *error;

	int screen_num = state->screen_num;
	if (screen_num < 0) screen_num = state->preferred_screen;

	/* Get screen */
	const xcb_setup_t *setup = FUNC7(state->conn);
	xcb_screen_iterator_t iter = FUNC19(setup);
	state->screen = NULL;

	for (int i = 0; iter.rem > 0; i++) {
		if (i == screen_num) {
			state->screen = iter.data;
			break;
		}
		FUNC18(&iter);
	}

	if (state->screen == NULL) {
		FUNC2(stderr, FUNC0("Screen %i could not be found.\n"),
			screen_num);
		return -1;
	}

	/* Get list of CRTCs for the screen */
	xcb_randr_get_screen_resources_current_cookie_t res_cookie =
		FUNC15(state->conn,
						       state->screen->root);
	xcb_randr_get_screen_resources_current_reply_t *res_reply =
		FUNC17(state->conn,
							     res_cookie,
							     &error);

	if (error) {
		FUNC2(stderr, FUNC0("`%s' returned error %d\n"),
			"RANDR Get Screen Resources Current",
			error->error_code);
		return -1;
	}

	state->crtc_count = res_reply->num_crtcs;
	state->crtcs = FUNC1(state->crtc_count, sizeof(randr_crtc_state_t));
	if (state->crtcs == NULL) {
		FUNC6("malloc");
		state->crtc_count = 0;
		return -1;
	}

	xcb_randr_crtc_t *crtcs =
		FUNC16(res_reply);

	/* Save CRTC identifier in state */
	for (int i = 0; i < state->crtc_count; i++) {
		state->crtcs[i].crtc = crtcs[i];
	}

	FUNC3(res_reply);

	/* Save size and gamma ramps of all CRTCs.
	   Current gamma ramps are saved so we can restore them
	   at program exit. */
	for (int i = 0; i < state->crtc_count; i++) {
		xcb_randr_crtc_t crtc = state->crtcs[i].crtc;

		/* Request size of gamma ramps */
		xcb_randr_get_crtc_gamma_size_cookie_t gamma_size_cookie =
			FUNC13(state->conn, crtc);
		xcb_randr_get_crtc_gamma_size_reply_t *gamma_size_reply =
			FUNC14(state->conn,
							    gamma_size_cookie,
							    &error);

		if (error) {
			FUNC2(stderr, FUNC0("`%s' returned error %d\n"),
				"RANDR Get CRTC Gamma Size",
				error->error_code);
			return -1;
		}

		unsigned int ramp_size = gamma_size_reply->size;
		state->crtcs[i].ramp_size = ramp_size;

		FUNC3(gamma_size_reply);

		if (ramp_size == 0) {
			FUNC2(stderr, FUNC0("Gamma ramp size too small: %i\n"),
				ramp_size);
			return -1;
		}

		/* Request current gamma ramps */
		xcb_randr_get_crtc_gamma_cookie_t gamma_get_cookie =
			FUNC8(state->conn, crtc);
		xcb_randr_get_crtc_gamma_reply_t *gamma_get_reply =
			FUNC12(state->conn,
						       gamma_get_cookie,
						       &error);

		if (error) {
			FUNC2(stderr, FUNC0("`%s' returned error %d\n"),
				"RANDR Get CRTC Gamma", error->error_code);
			return -1;
		}

		uint16_t *gamma_r =
			FUNC11(gamma_get_reply);
		uint16_t *gamma_g =
			FUNC10(gamma_get_reply);
		uint16_t *gamma_b =
			FUNC9(gamma_get_reply);

		/* Allocate space for saved gamma ramps */
		state->crtcs[i].saved_ramps =
			FUNC4(3*ramp_size*sizeof(uint16_t));
		if (state->crtcs[i].saved_ramps == NULL) {
			FUNC6("malloc");
			FUNC3(gamma_get_reply);
			return -1;
		}

		/* Copy gamma ramps into CRTC state */
		FUNC5(&state->crtcs[i].saved_ramps[0*ramp_size], gamma_r,
		       ramp_size*sizeof(uint16_t));
		FUNC5(&state->crtcs[i].saved_ramps[1*ramp_size], gamma_g,
		       ramp_size*sizeof(uint16_t));
		FUNC5(&state->crtcs[i].saved_ramps[2*ramp_size], gamma_b,
		       ramp_size*sizeof(uint16_t));

		FUNC3(gamma_get_reply);
	}

	return 0;
}