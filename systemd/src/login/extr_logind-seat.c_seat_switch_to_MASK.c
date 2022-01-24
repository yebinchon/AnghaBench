#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int position_count; int /*<<< orphan*/ * positions; } ;
typedef  TYPE_1__ Seat ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(Seat *s, unsigned num) {
        /* Public session positions skip 0 (there is only F1-F12). Maybe it
         * will get reassigned in the future, so return error for now. */
        if (num == 0)
                return -EINVAL;

        if (num >= s->position_count || !s->positions[num]) {
                /* allow switching to unused VTs to trigger auto-activate */
                if (FUNC1(s) && num < 64)
                        return FUNC0(num);

                return -EINVAL;
        }

        return FUNC2(s->positions[num]);
}