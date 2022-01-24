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
struct TYPE_5__ {scalar_t__ visible; } ;
struct swaynag {int width; int scale; scalar_t__ height; TYPE_3__* type; TYPE_2__ details; TYPE_1__* buttons; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_6__ {int button_margin_right; int button_gap; int button_gap_close; int bar_border_thickness; int /*<<< orphan*/  border_bottom; int /*<<< orphan*/  background; } ;
struct TYPE_4__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct swaynag*,int,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct swaynag*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct swaynag*) ; 

__attribute__((used)) static uint32_t FUNC8(cairo_t *cairo, struct swaynag *swaynag) {
	uint32_t max_height = 0;

	FUNC3(cairo, CAIRO_OPERATOR_SOURCE);
	FUNC4(cairo, swaynag->type->background);
	FUNC1(cairo);

	uint32_t h = FUNC7(cairo, swaynag);
	max_height = h > max_height ? h : max_height;

	int x = swaynag->width - swaynag->type->button_margin_right;
	x *= swaynag->scale;
	for (int i = 0; i < swaynag->buttons->length; i++) {
		h = FUNC5(cairo, swaynag, i, &x);
		max_height = h > max_height ? h : max_height;
		x -= swaynag->type->button_gap * swaynag->scale;
		if (i == 0) {
			x -= swaynag->type->button_gap_close * swaynag->scale;
		}
	}

	if (swaynag->details.visible) {
		h = FUNC6(cairo, swaynag, max_height);
		max_height = h > max_height ? h : max_height;
	}

	int border = swaynag->type->bar_border_thickness * swaynag->scale;
	if (max_height > swaynag->height) {
		max_height += border;
	}
	FUNC4(cairo, swaynag->type->border_bottom);
	FUNC2(cairo, 0,
			swaynag->height * swaynag->scale - border,
			swaynag->width * swaynag->scale,
			border);
	FUNC0(cairo);

	return max_height;
}