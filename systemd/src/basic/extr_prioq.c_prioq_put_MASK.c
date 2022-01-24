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
struct prioq_item {unsigned int* idx; void* data; } ;
struct TYPE_5__ {unsigned int n_items; unsigned int n_allocated; struct prioq_item* items; } ;
typedef  TYPE_1__ Prioq ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct prioq_item* FUNC2 (struct prioq_item*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 

int FUNC4(Prioq *q, void *data, unsigned *idx) {
        struct prioq_item *i;
        unsigned k;

        FUNC1(q);

        if (q->n_items >= q->n_allocated) {
                unsigned n;
                struct prioq_item *j;

                n = FUNC0((q->n_items+1) * 2, 16u);
                j = FUNC2(q->items, n, sizeof(struct prioq_item));
                if (!j)
                        return -ENOMEM;

                q->items = j;
                q->n_allocated = n;
        }

        k = q->n_items++;
        i = q->items + k;
        i->data = data;
        i->idx = idx;

        if (idx)
                *idx = k;

        FUNC3(q, k);

        return 0;
}