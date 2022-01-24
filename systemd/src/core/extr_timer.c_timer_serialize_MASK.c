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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_4__ {scalar_t__ realtime; scalar_t__ monotonic; } ;
struct TYPE_5__ {TYPE_1__ last_trigger; int /*<<< orphan*/  result; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ Timer ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Unit *u, FILE *f, FDSet *fds) {
        Timer *t = FUNC0(u);

        FUNC1(u);
        FUNC1(f);
        FUNC1(fds);

        (void) FUNC2(f, "state", FUNC5(t->state));
        (void) FUNC2(f, "result", FUNC4(t->result));

        if (t->last_trigger.realtime > 0)
                (void) FUNC3(f, "last-trigger-realtime", t->last_trigger.realtime);

        if (t->last_trigger.monotonic > 0)
                (void) FUNC3(f, "last-trigger-monotonic", t->last_trigger.monotonic);

        return 0;
}