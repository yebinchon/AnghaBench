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
struct TYPE_5__ {int type; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_2__* unit; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 

int FUNC4(const void *a, const void *b) {
        const Job *x = a, *y = b;
        int nice_x, nice_y;
        uint64_t weight_x, weight_y;
        int ret;

        if ((ret = FUNC0(x->unit->type, y->unit->type)) != 0)
                return -ret;

        weight_x = FUNC2(x->unit);
        weight_y = FUNC2(y->unit);

        if ((ret = FUNC0(weight_x, weight_y)) != 0)
                return -ret;

        nice_x = FUNC3(x->unit);
        nice_y = FUNC3(y->unit);

        if ((ret = FUNC0(nice_x, nice_y)) != 0)
                return ret;

        return FUNC1(x->unit->id, y->unit->id);
}