#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bpl_lock; int /*<<< orphan*/  bpl_list; } ;
typedef  TYPE_1__ bplist_t ;
typedef  int /*<<< orphan*/  bplist_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/ * bplist_iterate_last_removed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(bplist_t *bpl)
{
	bplist_entry_t *bpe;

	FUNC3(&bpl->bpl_lock);
	while ((bpe = FUNC1(&bpl->bpl_list))) {
		bplist_iterate_last_removed = bpe;
		FUNC2(&bpl->bpl_list, bpe);
		FUNC0(bpe, sizeof (*bpe));
	}
	FUNC4(&bpl->bpl_lock);
}