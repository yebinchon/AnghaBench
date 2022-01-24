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
struct TYPE_5__ {int length; void** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void FUNC3(list_t *list, void *item) {
	int i;
	for (i = 0; i < list->length; ++i) {
		if (list->items[i] == item) {
			break;
		}
	}
	if (!FUNC2(i < list->length, "Item not found in list")) {
		return;
	}
	FUNC1(list, i);
	FUNC0(list, item);
}