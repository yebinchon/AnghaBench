#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_10__ {scalar_t__ controller; int /*<<< orphan*/  was_abandoned; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Scope ;
typedef  TYPE_1__ FILE ;
typedef  TYPE_1__ FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(Unit *u, FILE *f, FDSet *fds) {
        Scope *s = FUNC0(u);

        FUNC1(s);
        FUNC1(f);
        FUNC1(fds);

        (void) FUNC4(f, "state", FUNC2(s->state));
        (void) FUNC3(f, "was-abandoned", s->was_abandoned);

        if (s->controller)
                (void) FUNC4(f, "controller", s->controller);

        return 0;
}