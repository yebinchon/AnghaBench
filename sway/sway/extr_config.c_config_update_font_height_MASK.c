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
struct TYPE_2__ {size_t font_height; scalar_t__ font_baseline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  find_baseline_iterator ; 
 int /*<<< orphan*/  find_font_height_iterator ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 

void FUNC2(bool recalculate) {
	size_t prev_max_height = config->font_height;
	config->font_height = 0;
	config->font_baseline = 0;

	FUNC1(find_baseline_iterator, &recalculate);
	FUNC1(find_font_height_iterator, NULL);

	if (config->font_height != prev_max_height) {
		FUNC0();
	}
}