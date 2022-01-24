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
struct ref {int /*<<< orphan*/  id; struct ref* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  refs_by_id ; 
 void** FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ref *ref)
{
	void **ref_slot = FUNC0(&refs_by_id, ref->id);
	struct ref *list = ref_slot ? *ref_slot : NULL;
	struct ref *prev = NULL;

	for (; list; prev = list, list = list->next) {
		if (list != ref)
			continue;

		if (!prev)
			*ref_slot = ref->next;
		else
			prev->next = ref->next;
		ref->next = NULL;
		break;
	}

	if (ref_slot && !*ref_slot)
		FUNC1(&refs_by_id, ref->id);
}