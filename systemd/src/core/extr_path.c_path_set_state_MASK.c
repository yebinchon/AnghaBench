#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; scalar_t__ inotify_triggered; } ;
typedef  scalar_t__ PathState ;
typedef  TYPE_1__ Path ;

/* Variables and functions */
 scalar_t__ PATH_RUNNING ; 
 scalar_t__ PATH_WAITING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Path *p, PathState state) {
        PathState old_state;
        FUNC1(p);

        if (p->state != state)
                FUNC2(FUNC0(p), false);

        old_state = p->state;
        p->state = state;

        if (state != PATH_WAITING &&
            (state != PATH_RUNNING || p->inotify_triggered))
                FUNC5(p);

        if (state != old_state)
                FUNC3(FUNC0(p), "Changed %s -> %s", FUNC4(old_state), FUNC4(state));

        FUNC6(FUNC0(p), state_translation_table[old_state], state_translation_table[state], 0);
}