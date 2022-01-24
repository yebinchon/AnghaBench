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
struct TYPE_5__ {int /*<<< orphan*/  present; int /*<<< orphan*/  scale; int /*<<< orphan*/  transform; int /*<<< orphan*/  mode; int /*<<< orphan*/  destroy; } ;
struct wlr_output {TYPE_1__ events; int /*<<< orphan*/  name; } ;
struct wl_listener {int dummy; } ;
struct sway_server {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  notify; } ;
struct sway_output {int /*<<< orphan*/  wlr_output; TYPE_4__ damage_destroy; TYPE_3__* damage; TYPE_4__ damage_frame; TYPE_4__ present; TYPE_4__ scale; TYPE_4__ transform; TYPE_4__ mode; TYPE_4__ destroy; struct sway_server* server; } ;
struct output_config {scalar_t__ enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  destroy; int /*<<< orphan*/  frame; } ;
struct TYPE_7__ {TYPE_2__ events; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  damage_handle_destroy ; 
 int /*<<< orphan*/  damage_handle_frame ; 
 struct output_config* FUNC0 (struct sway_output*) ; 
 int /*<<< orphan*/  handle_destroy ; 
 int /*<<< orphan*/  handle_mode ; 
 int /*<<< orphan*/  handle_present ; 
 int /*<<< orphan*/  handle_scale ; 
 int /*<<< orphan*/  handle_transform ; 
 int /*<<< orphan*/  new_output ; 
 struct sway_output* FUNC1 (struct wlr_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*,struct output_config*) ; 
 struct sway_server* server ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wlr_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sway_server*) ; 
 struct sway_server* FUNC6 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_3__* FUNC8 (struct wlr_output*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

void FUNC10(struct wl_listener *listener, void *data) {
	struct sway_server *server = FUNC6(listener, server, new_output);
	struct wlr_output *wlr_output = data;
	FUNC3(SWAY_DEBUG, "New output %p: %s", wlr_output, wlr_output->name);

	struct sway_output *output = FUNC1(wlr_output);
	if (!output) {
		return;
	}
	output->server = server;
	output->damage = FUNC8(wlr_output);

	FUNC7(&wlr_output->events.destroy, &output->destroy);
	output->destroy.notify = handle_destroy;
	FUNC7(&wlr_output->events.mode, &output->mode);
	output->mode.notify = handle_mode;
	FUNC7(&wlr_output->events.transform, &output->transform);
	output->transform.notify = handle_transform;
	FUNC7(&wlr_output->events.scale, &output->scale);
	output->scale.notify = handle_scale;
	FUNC7(&wlr_output->events.present, &output->present);
	output->present.notify = handle_present;
	FUNC7(&output->damage->events.frame, &output->damage_frame);
	output->damage_frame.notify = damage_handle_frame;
	FUNC7(&output->damage->events.destroy, &output->damage_destroy);
	output->damage_destroy.notify = damage_handle_destroy;

	struct output_config *oc = FUNC0(output);
	if (!oc || oc->enabled) {
		FUNC2(output, oc);
	} else {
		FUNC9(output->wlr_output, false);
	}

	FUNC4();

	FUNC5(server);
}