#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int crtc_num; int fd; int /*<<< orphan*/ * res; struct TYPE_5__* crtcs; struct TYPE_5__* r_gamma; } ;
typedef  TYPE_1__ drm_state_t ;
typedef  TYPE_1__ drm_crtc_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(drm_state_t *state)
{
	if (state->crtcs != NULL) {
		drm_crtc_state_t *crtcs = state->crtcs;
		while (crtcs->crtc_num >= 0) {
			FUNC2(crtcs->r_gamma);
			crtcs->crtc_num = -1;
			crtcs++;
		}
		FUNC2(state->crtcs);
		state->crtcs = NULL;
	}
	if (state->res != NULL) {
		FUNC1(state->res);
		state->res = NULL;
	}
	if (state->fd >= 0) {
		FUNC0(state->fd);
		state->fd = -1;
	}

	FUNC2(state);
}