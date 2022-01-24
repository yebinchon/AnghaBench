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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_3__ {int /*<<< orphan*/  timer_event_source; } ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USEC_INFINITY ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(Unit *u, usec_t *timeout) {
        Mount *m = FUNC0(u);
        usec_t t;
        int r;

        if (!m->timer_event_source)
                return 0;

        r = FUNC1(m->timer_event_source, &t);
        if (r < 0)
                return r;
        if (t == USEC_INFINITY)
                return 0;

        *timeout = t;
        return 1;
}