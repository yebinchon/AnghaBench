#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct footnote_list {struct footnote_item* head; } ;
struct footnote_item {int /*<<< orphan*/  ref; struct footnote_item* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct footnote_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct footnote_list *list, int free_refs)
{
	struct footnote_item *item = list->head;
	struct footnote_item *next;

	while (item) {
		next = item->next;
		if (free_refs)
			FUNC1(item->ref);
		FUNC0(item);
		item = next;
	}
}