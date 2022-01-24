#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t row_count; int /*<<< orphan*/  info_ptr; int /*<<< orphan*/  png_ptr; struct TYPE_5__** row_pointers; scalar_t__ free_row_pointers; } ;
typedef  TYPE_1__* PNGWriteInfoRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static void FUNC4(PNGWriteInfoRef info)
{
	FUNC0(info != NULL);
	if (info->row_pointers != NULL) {
		if (info->free_row_pointers) {
			size_t y;
			for (y = 0; y < info->row_count; ++y) {
				FUNC1(info->row_pointers[y]);
			}
		}
		FUNC3(info->png_ptr, info->row_pointers);
	}

	FUNC2(&(info->png_ptr), &(info->info_ptr));
	FUNC1(info);
}