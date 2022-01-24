#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {int* tn_member; struct TYPE_4__** tn_next; } ;
typedef  TYPE_1__ txg_node_t ;
struct TYPE_5__ {char* tl_offset; int /*<<< orphan*/  tl_lock; TYPE_1__** tl_head; int /*<<< orphan*/  tl_spa; } ;
typedef  TYPE_2__ txg_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TXG_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *
FUNC4(txg_list_t *tl, uint64_t txg)
{
	int t = txg & TXG_MASK;
	txg_node_t *tn;
	void *p = NULL;

	FUNC1(tl->tl_spa, txg);
	FUNC2(&tl->tl_lock);
	if ((tn = tl->tl_head[t]) != NULL) {
		FUNC0(tn->tn_member[t]);
		FUNC0(tn->tn_next[t] == NULL || tn->tn_next[t]->tn_member[t]);
		p = (char *)tn - tl->tl_offset;
		tl->tl_head[t] = tn->tn_next[t];
		tn->tn_next[t] = NULL;
		tn->tn_member[t] = 0;
	}
	FUNC3(&tl->tl_lock);

	return (p);
}