#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef  scalar_t__ SliceState ;
typedef  TYPE_1__ Slice ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Slice *t, SliceState state) {
        SliceState old_state;
        FUNC1(t);

        if (t->state != state)
                FUNC2(FUNC0(t), false);

        old_state = t->state;
        t->state = state;

        if (state != old_state)
                FUNC3("%s changed %s -> %s",
                          FUNC0(t)->id,
                          FUNC4(old_state),
                          FUNC4(state));

        FUNC5(FUNC0(t), state_translation_table[old_state], state_translation_table[state], 0);
}