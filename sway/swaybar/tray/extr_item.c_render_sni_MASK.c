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
typedef  int uint32_t ;
struct swaybar_sni {int target_size; int min_size; int max_size; int /*<<< orphan*/  watcher_id; scalar_t__ icon; } ;
struct swaybar_output {int height; int scale; int /*<<< orphan*/  hotspots; TYPE_2__* bar; } ;
struct swaybar_hotspot {double x; int width; int height; int /*<<< orphan*/  link; int /*<<< orphan*/  data; int /*<<< orphan*/  destroy; int /*<<< orphan*/  callback; int /*<<< orphan*/  y; } ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
typedef  int /*<<< orphan*/  cairo_operator_t ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int tray_padding; int /*<<< orphan*/  icon_theme; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/  CAIRO_OPERATOR_CLEAR ; 
 int /*<<< orphan*/  CAIRO_OPERATOR_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double,double) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,double,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 struct swaybar_hotspot* FUNC17 (int,int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  icon_hotspot_callback ; 
 int /*<<< orphan*/  FUNC19 (struct swaybar_sni*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (struct swaybar_sni*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

uint32_t FUNC23(cairo_t *cairo, struct swaybar_output *output, double *x,
		struct swaybar_sni *sni) {
	uint32_t height = output->height * output->scale;
	int padding = output->bar->config->tray_padding;
	int target_size = height - 2*padding;
	if (target_size != sni->target_size && FUNC20(sni)) {
		// check if another icon should be loaded
		if (target_size < sni->min_size || target_size > sni->max_size) {
			FUNC19(sni, output->bar->config->icon_theme, target_size);
		}

		sni->target_size = target_size;
	}

	int icon_size;
	cairo_surface_t *icon;
	if (sni->icon) {
		int actual_size = FUNC6(sni->icon);
		icon_size = actual_size < target_size ?
			actual_size*(target_size/actual_size) : target_size;
		icon = FUNC7(sni->icon, icon_size, icon_size);
	} else { // draw a :(
		icon_size = target_size*0.8;
		icon = FUNC5(CAIRO_FORMAT_ARGB32, icon_size, icon_size);
		cairo_t *cairo_icon = FUNC1(icon);
		FUNC13(cairo_icon, 0xFF0000FF);
		FUNC16(cairo_icon, icon_size/2, icon_size/2);
		FUNC9(cairo_icon, icon_size/2, icon_size/2);
		FUNC0(cairo_icon, 0, 0, 1, 0, 7);
		FUNC3(cairo_icon);
		FUNC11(cairo_icon, CAIRO_OPERATOR_CLEAR);
		FUNC0(cairo_icon, 0.35, -0.3, 0.1, 0, 7);
		FUNC3(cairo_icon);
		FUNC0(cairo_icon, -0.35, -0.3, 0.1, 0, 7);
		FUNC3(cairo_icon);
		FUNC0(cairo_icon, 0, 0.75, 0.5, 3.71238898038469, 5.71238898038469);
		FUNC10(cairo_icon, 0.1);
		FUNC14(cairo_icon);
		FUNC2(cairo_icon);
	}

	int padded_size = icon_size + 2*padding;
	*x -= padded_size;
	int y = FUNC18((height - padded_size) / 2.0);

	cairo_operator_t op = FUNC4(cairo);
	FUNC11(cairo, CAIRO_OPERATOR_OVER);
	FUNC12(cairo, icon, *x + padding, y + padding);
	FUNC8(cairo, *x, y, padded_size, padded_size);
	FUNC3(cairo);
	FUNC11(cairo, op);

	FUNC15(icon);

	struct swaybar_hotspot *hotspot = FUNC17(1, sizeof(struct swaybar_hotspot));
	hotspot->x = *x;
	hotspot->y = 0;
	hotspot->width = height;
	hotspot->height = height;
	hotspot->callback = icon_hotspot_callback;
	hotspot->destroy = free;
	hotspot->data = FUNC21(sni->watcher_id);
	FUNC22(&output->hotspots, &hotspot->link);

	return output->height;
}