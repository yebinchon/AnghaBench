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
struct sway_container {int title_height; int title_baseline; int /*<<< orphan*/  formatted_title; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_2__ {int /*<<< orphan*/  pango_markup; int /*<<< orphan*/  font; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct sway_container *container) {
	if (!container->formatted_title) {
		container->title_height = 0;
		return;
	}
	cairo_t *cairo = FUNC0(NULL);
	int height;
	int baseline;
	FUNC2(cairo, config->font, NULL, &height, &baseline, 1,
			config->pango_markup, "%s", container->formatted_title);
	FUNC1(cairo);
	container->title_height = height;
	container->title_baseline = baseline;
}