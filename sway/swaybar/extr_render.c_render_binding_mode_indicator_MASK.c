#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct swaybar_output {int scale; scalar_t__ height; TYPE_3__* bar; } ;
struct TYPE_4__ {int /*<<< orphan*/  text; int /*<<< orphan*/  border; int /*<<< orphan*/  background; } ;
struct TYPE_5__ {TYPE_1__ binding_mode; } ;
struct swaybar_config {int /*<<< orphan*/  font; TYPE_2__ colors; int /*<<< orphan*/  height; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_6__ {char* mode; int /*<<< orphan*/  mode_pango_markup; struct swaybar_config* config; } ;

/* Variables and functions */
 int BORDER_WIDTH ; 
 int WS_HORIZONTAL_PADDING ; 
 int WS_VERTICAL_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static uint32_t FUNC7(cairo_t *cairo,
		struct swaybar_output *output, double x) {
	const char *mode = output->bar->mode;
	if (!mode) {
		return 0;
	}

	struct swaybar_config *config = output->bar->config;
	int text_width, text_height;
	FUNC5(cairo, config->font, &text_width, &text_height, NULL,
			output->scale, output->bar->mode_pango_markup,
			"%s", mode);

	int ws_vertical_padding = WS_VERTICAL_PADDING * output->scale;
	int ws_horizontal_padding = WS_HORIZONTAL_PADDING * output->scale;
	int border_width = BORDER_WIDTH * output->scale;

	uint32_t ideal_height = text_height + ws_vertical_padding * 2
		+ border_width * 2;
	uint32_t ideal_surface_height = ideal_height / output->scale;
	if (!output->bar->config->height &&
			output->height < ideal_surface_height) {
		return ideal_surface_height;
	}
	uint32_t width = text_width + ws_horizontal_padding * 2 + border_width * 2;

	uint32_t height = output->height * output->scale;
	FUNC3(cairo, config->colors.binding_mode.background);
	FUNC2(cairo, x, 0, width, height);
	FUNC0(cairo);

	FUNC3(cairo, config->colors.binding_mode.border);
	FUNC2(cairo, x, 0, width, border_width);
	FUNC0(cairo);
	FUNC2(cairo, x, 0, border_width, height);
	FUNC0(cairo);
	FUNC2(cairo, x + width - border_width, 0, border_width, height);
	FUNC0(cairo);
	FUNC2(cairo, x, height - border_width, width, border_width);
	FUNC0(cairo);

	double text_y = height / 2.0 - text_height / 2.0;
	FUNC3(cairo, config->colors.binding_mode.text);
	FUNC1(cairo, x + width / 2 - text_width / 2, (int)FUNC4(text_y));
	FUNC6(cairo, config->font, output->scale,
			output->bar->mode_pango_markup, "%s", mode);
	return output->height;
}