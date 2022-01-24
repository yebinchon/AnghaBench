#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct sway_output {int /*<<< orphan*/  server; int /*<<< orphan*/  configured; int /*<<< orphan*/  enabled; TYPE_1__* wlr_output; } ;
struct output_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * current_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct output_config*,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*) ; 
 struct output_config* FUNC3 (struct sway_output*) ; 
 int /*<<< orphan*/  mode ; 
 struct sway_output* output ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sway_output* FUNC7 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wl_listener *listener, void *data) {
	struct sway_output *output = FUNC7(listener, output, mode);
	if (!output->configured && !output->enabled) {
		struct output_config *oc = FUNC3(output);
		if (output->wlr_output->current_mode != NULL &&
				(!oc || oc->enabled)) {
			// We want to enable this output, but it didn't work last time,
			// possibly because we hadn't enough CRTCs. Try again now that the
			// output has a mode.
			FUNC4(SWAY_DEBUG, "Output %s has gained a CRTC, "
				"trying to enable it", output->wlr_output->name);
			FUNC0(oc, output);
		}
		return;
	}
	if (!output->enabled || !output->configured) {
		return;
	}
	FUNC1(output);
	FUNC2(output);
	FUNC5();

	FUNC6(output->server);
}