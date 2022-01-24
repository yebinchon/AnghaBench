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
typedef  scalar_t__ uint32_t ;
struct swaybar_workspace {int /*<<< orphan*/  name; int /*<<< orphan*/  label; scalar_t__ visible; scalar_t__ focused; scalar_t__ urgent; } ;
struct swaybar_output {scalar_t__ height; scalar_t__ scale; int /*<<< orphan*/  hotspots; TYPE_2__* bar; } ;
struct swaybar_hotspot {double x; int /*<<< orphan*/  link; int /*<<< orphan*/  data; int /*<<< orphan*/  destroy; int /*<<< orphan*/  callback; scalar_t__ height; scalar_t__ width; scalar_t__ y; } ;
struct box_colors {int /*<<< orphan*/  text; int /*<<< orphan*/  border; int /*<<< orphan*/  background; } ;
struct TYPE_3__ {struct box_colors inactive_workspace; struct box_colors active_workspace; struct box_colors focused_workspace; struct box_colors urgent_workspace; } ;
struct swaybar_config {int /*<<< orphan*/  pango_markup; int /*<<< orphan*/  font; int /*<<< orphan*/  height; TYPE_1__ colors; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_4__ {struct swaybar_config* config; } ;

/* Variables and functions */
 int BORDER_WIDTH ; 
 int WS_HORIZONTAL_PADDING ; 
 int WS_VERTICAL_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct swaybar_hotspot* FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (double) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  workspace_hotspot_callback ; 

__attribute__((used)) static uint32_t FUNC10(cairo_t *cairo,
		struct swaybar_output *output,
		struct swaybar_workspace *ws, double *x) {
	struct swaybar_config *config = output->bar->config;
	struct box_colors box_colors;
	if (ws->urgent) {
		box_colors = config->colors.urgent_workspace;
	} else if (ws->focused) {
		box_colors = config->colors.focused_workspace;
	} else if (ws->visible) {
		box_colors = config->colors.active_workspace;
	} else {
		box_colors = config->colors.inactive_workspace;
	}

	uint32_t height = output->height * output->scale;

	int text_width, text_height;
	FUNC6(cairo, config->font, &text_width, &text_height, NULL,
			output->scale, config->pango_markup, "%s", ws->label);

	int ws_vertical_padding = WS_VERTICAL_PADDING * output->scale;
	int ws_horizontal_padding = WS_HORIZONTAL_PADDING * output->scale;
	int border_width = BORDER_WIDTH * output->scale;

	uint32_t ideal_height = ws_vertical_padding * 2 + text_height
		+ border_width * 2;
	uint32_t ideal_surface_height = ideal_height / output->scale;
	if (!output->bar->config->height &&
			output->height < ideal_surface_height) {
		return ideal_surface_height;
	}

	uint32_t width = ws_horizontal_padding * 2 + text_width + border_width * 2;

	FUNC3(cairo, box_colors.background);
	FUNC2(cairo, *x, 0, width, height);
	FUNC0(cairo);

	FUNC3(cairo, box_colors.border);
	FUNC2(cairo, *x, 0, width, border_width);
	FUNC0(cairo);
	FUNC2(cairo, *x, 0, border_width, height);
	FUNC0(cairo);
	FUNC2(cairo, *x + width - border_width, 0, border_width, height);
	FUNC0(cairo);
	FUNC2(cairo, *x, height - border_width, width, border_width);
	FUNC0(cairo);

	double text_y = height / 2.0 - text_height / 2.0;
	FUNC3(cairo, box_colors.text);
	FUNC1(cairo, *x + width / 2 - text_width / 2, (int)FUNC5(text_y));
	FUNC7(cairo, config->font, output->scale, config->pango_markup,
			"%s", ws->label);

	struct swaybar_hotspot *hotspot = FUNC4(1, sizeof(struct swaybar_hotspot));
	hotspot->x = *x;
	hotspot->y = 0;
	hotspot->width = width;
	hotspot->height = height;
	hotspot->callback = workspace_hotspot_callback;
	hotspot->destroy = free;
	hotspot->data = FUNC8(ws->name);
	FUNC9(&output->hotspots, &hotspot->link);

	*x += width;
	return output->height;
}