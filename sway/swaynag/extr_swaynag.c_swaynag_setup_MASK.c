#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl_registry {int dummy; } ;
struct swaynag_pointer {int cursor_surface; } ;
struct swaynag {int scale; scalar_t__ querying_outputs; int surface; int layer_surface; TYPE_2__* type; TYPE_1__* output; scalar_t__ layer_shell; scalar_t__ compositor; struct swaynag_pointer pointer; int /*<<< orphan*/  display; scalar_t__ shm; int /*<<< orphan*/  outputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  anchors; scalar_t__ output; } ;
struct TYPE_3__ {int /*<<< orphan*/ * wl_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  ZWLR_LAYER_SHELL_V1_LAYER_TOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_surface_listener ; 
 int /*<<< orphan*/  registry_listener ; 
 int /*<<< orphan*/  surface_listener ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct swaynag*) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct wl_registry* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wl_registry*,int /*<<< orphan*/ *,struct swaynag*) ; 
 int /*<<< orphan*/  FUNC11 (struct wl_registry*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *,struct swaynag*) ; 
 int FUNC13 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *,struct swaynag*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 

void FUNC16(struct swaynag *swaynag) {
	swaynag->display = FUNC6(NULL);
	if (!swaynag->display) {
		FUNC2("Unable to connect to the compositor. "
				"If your compositor is running, check or set the "
				"WAYLAND_DISPLAY environment variable.");
	}

	swaynag->scale = 1;
	FUNC9(&swaynag->outputs);

	struct wl_registry *registry = FUNC7(swaynag->display);
	FUNC10(registry, &registry_listener, swaynag);
	FUNC8(swaynag->display);
	FUNC0(swaynag->compositor && swaynag->layer_shell && swaynag->shm);

	while (swaynag->querying_outputs > 0) {
		FUNC8(swaynag->display);
	}

	if (!swaynag->output && swaynag->type->output) {
		FUNC3(SWAY_ERROR, "Output '%s' not found", swaynag->type->output);
		FUNC4(swaynag);
		FUNC1(EXIT_FAILURE);
	}

	struct swaynag_pointer *pointer = &swaynag->pointer;
	pointer->cursor_surface = FUNC5(swaynag->compositor);
	FUNC0(pointer->cursor_surface);

	swaynag->surface = FUNC5(swaynag->compositor);
	FUNC0(swaynag->surface);
	FUNC12(swaynag->surface, &surface_listener, swaynag);

	swaynag->layer_surface = FUNC13(
			swaynag->layer_shell, swaynag->surface,
			swaynag->output ? swaynag->output->wl_output : NULL,
			ZWLR_LAYER_SHELL_V1_LAYER_TOP, "swaynag");
	FUNC0(swaynag->layer_surface);
	FUNC14(swaynag->layer_surface,
			&layer_surface_listener, swaynag);
	FUNC15(swaynag->layer_surface,
			swaynag->type->anchors);

	FUNC11(registry);
}