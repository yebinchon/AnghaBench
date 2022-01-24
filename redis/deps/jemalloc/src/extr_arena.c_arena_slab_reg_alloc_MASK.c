#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {size_t reg_size; int /*<<< orphan*/  bitmap_info; } ;
typedef  TYPE_1__ bin_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_2__ arena_slab_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC7(extent_t *slab, const bin_info_t *bin_info) {
	void *ret;
	arena_slab_data_t *slab_data = FUNC6(slab);
	size_t regind;

	FUNC0(FUNC5(slab) > 0);
	FUNC0(!FUNC1(slab_data->bitmap, &bin_info->bitmap_info));

	regind = FUNC2(slab_data->bitmap, &bin_info->bitmap_info);
	ret = (void *)((uintptr_t)FUNC3(slab) +
	    (uintptr_t)(bin_info->reg_size * regind));
	FUNC4(slab);
	return ret;
}