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
struct TYPE_5__ {int /*<<< orphan*/  capeff; int /*<<< orphan*/  pid; int /*<<< orphan*/  cmdline; int /*<<< orphan*/  exe; int /*<<< orphan*/  comm; } ;
typedef  TYPE_1__ ClientContext ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char**) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ClientContext *c) {
        char *t;

        FUNC0(c);
        FUNC0(FUNC6(c->pid));

        if (FUNC4(c->pid, &t) >= 0)
                FUNC1(c->comm, t);

        if (FUNC5(c->pid, &t) >= 0)
                FUNC1(c->exe, t);

        if (FUNC3(c->pid, SIZE_MAX, 0, &t) >= 0)
                FUNC1(c->cmdline, t);

        if (FUNC2(c->pid, &t) >= 0)
                FUNC1(c->capeff, t);
}