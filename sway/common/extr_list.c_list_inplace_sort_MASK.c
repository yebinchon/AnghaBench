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
struct TYPE_5__ {int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int,int (*) (void const*,void const*)) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC2(list_t *list, int first, int last, int compare(const void *a, const void *b)) {
	if (first >= last) {
		return;
	} else if ((last - first) == 1) {
		if (compare(&list->items[first], &list->items[last]) > 0) {
			FUNC1(list, first, last);
		}
	} else {
		int mid = (int)((last + first) / 2);
		FUNC2(list, first, mid, compare);
		FUNC2(list, mid + 1, last, compare);
		FUNC0(list, first, last, mid, compare);
	}
}