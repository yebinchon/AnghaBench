#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {scalar_t__ state; int /*<<< orphan*/  timer_event_source; } ;
typedef  scalar_t__ ScopeState ;
typedef  TYPE_1__ Scope ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCOPE_DEAD ; 
 int /*<<< orphan*/  SCOPE_FAILED ; 
 int /*<<< orphan*/  SCOPE_STOP_SIGKILL ; 
 int /*<<< orphan*/  SCOPE_STOP_SIGTERM ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(Scope *s, ScopeState state) {
        ScopeState old_state;
        FUNC2(s);

        if (s->state != state)
                FUNC3(FUNC1(s), false);

        old_state = s->state;
        s->state = state;

        if (!FUNC0(state, SCOPE_STOP_SIGTERM, SCOPE_STOP_SIGKILL))
                s->timer_event_source = FUNC6(s->timer_event_source);

        if (FUNC0(state, SCOPE_DEAD, SCOPE_FAILED)) {
                FUNC9(FUNC1(s));
                FUNC7(FUNC1(s));
        }

        if (state != old_state)
                FUNC4("%s changed %s -> %s", FUNC1(s)->id, FUNC5(old_state), FUNC5(state));

        FUNC8(FUNC1(s), state_translation_table[old_state], state_translation_table[state], 0);
}