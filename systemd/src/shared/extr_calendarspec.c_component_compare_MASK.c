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
struct TYPE_4__ {int /*<<< orphan*/  repeat; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ CalendarComponent ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(CalendarComponent * const *a, CalendarComponent * const *b) {
        int r;

        r = FUNC0((*a)->start, (*b)->start);
        if (r != 0)
                return r;

        r = FUNC0((*a)->stop, (*b)->stop);
        if (r != 0)
                return r;

        return FUNC0((*a)->repeat, (*b)->repeat);
}