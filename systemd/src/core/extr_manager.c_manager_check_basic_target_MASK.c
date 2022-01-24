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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_7__ {scalar_t__ taint_logged; scalar_t__ ready_sent; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_BASIC_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Manager *m) {
        Unit *u;

        FUNC1(m);

        /* Small shortcut */
        if (m->ready_sent && m->taint_logged)
                return;

        u = FUNC3(m, SPECIAL_BASIC_TARGET);
        if (!u || !FUNC0(FUNC5(u)))
                return;

        /* For user managers, send out READY=1 as soon as we reach basic.target */
        FUNC4(m);

        /* Log the taint string as soon as we reach basic.target */
        FUNC2(m);
}