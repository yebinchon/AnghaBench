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
struct prioq_item {int dummy; } ;
typedef  int /*<<< orphan*/  Prioq ;

/* Variables and functions */
 struct prioq_item* FUNC0 (int /*<<< orphan*/ *,void*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct prioq_item*) ; 

int FUNC2(Prioq *q, void *data, unsigned *idx) {
        struct prioq_item *i;

        if (!q)
                return 0;

        i = FUNC0(q, data, idx);
        if (!i)
                return 0;

        FUNC1(q, i);
        return 1;
}