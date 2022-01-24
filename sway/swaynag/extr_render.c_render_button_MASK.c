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
struct swaynag_button {int x; int y; int width; int height; int /*<<< orphan*/  text; } ;
struct swaynag {int scale; scalar_t__ height; TYPE_2__* type; TYPE_1__* buttons; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_4__ {int button_border_thickness; int button_padding; int /*<<< orphan*/  font; int /*<<< orphan*/  text; int /*<<< orphan*/  button_background; int /*<<< orphan*/  border; } ;
struct TYPE_3__ {struct swaynag_button** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC6(cairo_t *cairo, struct swaynag *swaynag,
		int button_index, int *x) {
	struct swaynag_button *button = swaynag->buttons->items[button_index];

	int text_width, text_height;
	FUNC4(cairo, swaynag->type->font, &text_width, &text_height, NULL,
			swaynag->scale, true, "%s", button->text);

	int border = swaynag->type->button_border_thickness * swaynag->scale;
	int padding = swaynag->type->button_padding * swaynag->scale;

	uint32_t ideal_height = text_height + padding * 2 + border * 2;
	uint32_t ideal_surface_height = ideal_height / swaynag->scale;
	if (swaynag->height < ideal_surface_height) {
		return ideal_surface_height;
	}

	button->x = *x - border - text_width - padding * 2 + 1;
	button->y = (int)(ideal_height - text_height) / 2 - padding + 1;
	button->width = text_width + padding * 2;
	button->height = text_height + padding * 2;

	FUNC3(cairo, swaynag->type->border);
	FUNC2(cairo, button->x - border, button->y - border,
			button->width + border * 2, button->height + border * 2);
	FUNC0(cairo);

	FUNC3(cairo, swaynag->type->button_background);
	FUNC2(cairo, button->x, button->y,
			button->width, button->height);
	FUNC0(cairo);

	FUNC3(cairo, swaynag->type->text);
	FUNC1(cairo, button->x + padding, button->y + padding);
	FUNC5(cairo, swaynag->type->font, swaynag->scale, true,
			"%s", button->text);

	*x = button->x - border;

	return ideal_surface_height;
}