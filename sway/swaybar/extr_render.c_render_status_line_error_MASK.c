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
struct swaybar_output {scalar_t__ height; scalar_t__ scale; TYPE_3__* bar; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_6__ {TYPE_2__* config; TYPE_1__* status; } ;
struct TYPE_5__ {double status_padding; char* font; int /*<<< orphan*/  height; } ;
struct TYPE_4__ {char* text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int*,int*,int /*<<< orphan*/ *,double,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,int,char*,char const*) ; 

__attribute__((used)) static uint32_t FUNC5(cairo_t *cairo,
		struct swaybar_output *output, double *x) {
	const char *error = output->bar->status->text;
	if (!error) {
		return 0;
	}

	uint32_t height = output->height * output->scale;

	FUNC1(cairo, 0xFF0000FF);

	int margin = 3 * output->scale;
	double ws_vertical_padding =
		output->bar->config->status_padding * output->scale;

	char *font = output->bar->config->font;
	int text_width, text_height;
	FUNC3(cairo, font, &text_width, &text_height, NULL,
			output->scale, false, "%s", error);

	uint32_t ideal_height = text_height + ws_vertical_padding * 2;
	uint32_t ideal_surface_height = ideal_height / output->scale;
	if (!output->bar->config->height &&
			output->height < ideal_surface_height) {
		return ideal_surface_height;
	}
	*x -= text_width + margin;

	double text_y = height / 2.0 - text_height / 2.0;
	FUNC0(cairo, *x, (int)FUNC2(text_y));
	FUNC4(cairo, font, output->scale, false, "%s", error);
	*x -= margin;
	return output->height;
}