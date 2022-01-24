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
struct prioq_item {int n_items; unsigned int* idx; int /*<<< orphan*/  data; struct prioq_item* items; } ;
typedef  struct prioq_item Prioq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct prioq_item*) ; 
 unsigned int FUNC1 (struct prioq_item*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct prioq_item*,unsigned int) ; 

__attribute__((used)) static void FUNC3(Prioq *q, struct prioq_item *i) {
        struct prioq_item *l;

        FUNC0(q);
        FUNC0(i);

        l = q->items + q->n_items - 1;

        if (i == l)
                /* Last entry, let's just remove it */
                q->n_items--;
        else {
                unsigned k;

                /* Not last entry, let's replace the last entry with
                 * this one, and reshuffle */

                k = i - q->items;

                i->data = l->data;
                i->idx = l->idx;
                if (i->idx)
                        *i->idx = k;
                q->n_items--;

                k = FUNC1(q, k);
                FUNC2(q, k);
        }
}