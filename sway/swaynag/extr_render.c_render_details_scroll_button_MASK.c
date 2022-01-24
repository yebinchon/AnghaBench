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
struct swaynag_button {int height; int /*<<< orphan*/  text; scalar_t__ y; scalar_t__ x; scalar_t__ width; } ;
struct swaynag {int scale; TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_2__ {int button_border_thickness; int button_padding; int /*<<< orphan*/  font; int /*<<< orphan*/  text; int /*<<< orphan*/  button_background; int /*<<< orphan*/  border; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(cairo_t *cairo,
		struct swaynag *swaynag, struct swaynag_button *button) {
	int text_width, text_height;
	FUNC4(cairo, swaynag->type->font, &text_width, &text_height, NULL,
			swaynag->scale, true, "%s", button->text);

	int border = swaynag->type->button_border_thickness * swaynag->scale;
	int padding = swaynag->type->button_padding * swaynag->scale;

	FUNC3(cairo, swaynag->type->border);
	FUNC2(cairo, button->x, button->y,
			button->width, button->height);
	FUNC0(cairo);

	FUNC3(cairo, swaynag->type->button_background);
	FUNC2(cairo, button->x + border, button->y + border,
			button->width - (border * 2), button->height - (border * 2));
	FUNC0(cairo);

	FUNC3(cairo, swaynag->type->text);
	FUNC1(cairo, button->x + border + padding,
			button->y + border + (button->height - text_height) / 2);
	FUNC5(cairo, swaynag->type->font, swaynag->scale, true,
			"%s", button->text);
}