#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct timespec {int dummy; } ;
struct TYPE_7__ {struct sway_container* fullscreen; } ;
struct sway_workspace {TYPE_3__ current; } ;
struct TYPE_6__ {struct sway_workspace* active_workspace; } ;
struct sway_output {int /*<<< orphan*/  damage; TYPE_2__ current; TYPE_1__* wlr_output; int /*<<< orphan*/  enabled; } ;
struct sway_container {scalar_t__ view; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;
struct TYPE_8__ {struct sway_container* fullscreen_global; } ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  damage_frame ; 
 struct sway_output* output ; 
 int /*<<< orphan*/  FUNC1 (struct sway_output*,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* root ; 
 int FUNC4 (struct sway_output*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_output*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct sway_output* FUNC7 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct wl_listener *listener, void *data) {
	struct sway_output *output =
		FUNC7(listener, output, damage_frame);
	if (!output->enabled || !output->wlr_output->enabled) {
		return;
	}

	struct timespec now;
	FUNC0(CLOCK_MONOTONIC, &now);

	struct sway_workspace *workspace = output->current.active_workspace;
	if (workspace == NULL) {
		return;
	}

	struct sway_container *fullscreen_con = root->fullscreen_global;
	if (!fullscreen_con) {
		fullscreen_con = workspace->current.fullscreen;
	}

	if (fullscreen_con && fullscreen_con->view) {
		// Try to scan-out the fullscreen view
		static bool last_scanned_out = false;
		bool scanned_out =
			FUNC4(output, fullscreen_con->view);

		if (scanned_out && !last_scanned_out) {
			FUNC6(SWAY_DEBUG, "Scanning out fullscreen view");
		}
		if (last_scanned_out && !scanned_out) {
			FUNC6(SWAY_DEBUG, "Stopping fullscreen view scan out");
		}
		last_scanned_out = scanned_out;

		if (scanned_out) {
			goto frame_done;
		}
	}

	bool needs_frame;
	pixman_region32_t damage;
	FUNC3(&damage);
	if (!FUNC8(output->damage,
			&needs_frame, &damage)) {
		return;
	}

	if (needs_frame) {
		FUNC1(output, &now, &damage);
	}

	FUNC2(&damage);

frame_done:
	// Send frame done to all visible surfaces
	FUNC5(output, &now);
}