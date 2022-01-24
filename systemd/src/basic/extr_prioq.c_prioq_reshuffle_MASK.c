#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct prioq_item {int dummy; } ;
struct TYPE_7__ {struct prioq_item* items; } ;
typedef  TYPE_1__ Prioq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct prioq_item* FUNC1 (TYPE_1__*,void*,unsigned int*) ; 
 unsigned int FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 

int FUNC4(Prioq *q, void *data, unsigned *idx) {
        struct prioq_item *i;
        unsigned k;

        FUNC0(q);

        i = FUNC1(q, data, idx);
        if (!i)
                return 0;

        k = i - q->items;
        k = FUNC2(q, k);
        FUNC3(q, k);
        return 1;
}