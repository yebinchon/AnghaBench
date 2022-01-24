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
typedef  int uint32_t ;
struct swaynag {int height; int width; int scale; int /*<<< orphan*/  display; int /*<<< orphan*/  surface; TYPE_1__* current_buffer; int /*<<< orphan*/  buffers; int /*<<< orphan*/  shm; int /*<<< orphan*/  layer_surface; int /*<<< orphan*/  run_display; } ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/ * cairo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_CONTENT_COLOR_ALPHA ; 
 int /*<<< orphan*/  CAIRO_OPERATOR_CLEAR ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct swaynag*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC19(struct swaynag *swaynag) {
	if (!swaynag->run_display) {
		return;
	}

	cairo_surface_t *recorder = FUNC3(
			CAIRO_CONTENT_COLOR_ALPHA, NULL);
	cairo_t *cairo = FUNC0(recorder);
	FUNC5(cairo);
	FUNC6(cairo, CAIRO_OPERATOR_CLEAR);
	FUNC2(cairo);
	FUNC4(cairo);
	uint32_t height = FUNC10(cairo, swaynag);
	if (height != swaynag->height) {
		FUNC18(swaynag->layer_surface, 0, height);
		FUNC17(swaynag->layer_surface,
				height);
		FUNC14(swaynag->surface);
		FUNC12(swaynag->display);
	} else {
		swaynag->current_buffer = FUNC9(swaynag->shm,
				swaynag->buffers,
				swaynag->width * swaynag->scale,
				swaynag->height * swaynag->scale);
		if (!swaynag->current_buffer) {
			FUNC11(SWAY_DEBUG, "Failed to get buffer. Skipping frame.");
			goto cleanup;
		}

		cairo_t *shm = swaynag->current_buffer->cairo;
		FUNC5(shm);
		FUNC6(shm, CAIRO_OPERATOR_CLEAR);
		FUNC2(shm);
		FUNC4(shm);
		FUNC7(shm, recorder, 0.0, 0.0);
		FUNC2(shm);

		FUNC16(swaynag->surface, swaynag->scale);
		FUNC13(swaynag->surface,
				swaynag->current_buffer->buffer, 0, 0);
		FUNC15(swaynag->surface, 0, 0,
				swaynag->width, swaynag->height);
		FUNC14(swaynag->surface);
		FUNC12(swaynag->display);
	}

cleanup:
	FUNC8(recorder);
	FUNC1(cairo);
}