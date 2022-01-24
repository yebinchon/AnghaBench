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
struct TYPE_5__ {int /*<<< orphan*/  deferred_closes; } ;
typedef  TYPE_1__ Server ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 scalar_t__ DEFERRED_CLOSES_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Server *s) {
        FUNC0(s);

        /* Make some room in the deferred closes list, so that it doesn't grow without bounds */
        if (FUNC4(s->deferred_closes) < DEFERRED_CLOSES_MAX)
                return;

        /* Let's first remove all journal files that might already have completed closing */
        FUNC3(s);

        /* And now, let's close some more until we reach the limit again. */
        while (FUNC4(s->deferred_closes) >= DEFERRED_CLOSES_MAX) {
                JournalFile *f;

                FUNC1(f = FUNC5(s->deferred_closes));
                FUNC2(f);
        }
}