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
struct TYPE_6__ {scalar_t__ state; } ;
typedef  scalar_t__ DeviceState ;
typedef  TYPE_1__ Device ;

/* Variables and functions */
 scalar_t__ DEVICE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Device *d, DeviceState state) {
        DeviceState old_state;
        FUNC1(d);

        if (d->state != state)
                FUNC2(FUNC0(d), false);

        old_state = d->state;
        d->state = state;

        if (state == DEVICE_DEAD)
                FUNC4(d);

        if (state != old_state)
                FUNC5(FUNC0(d), "Changed %s -> %s", FUNC3(old_state), FUNC3(state));

        FUNC6(FUNC0(d), state_translation_table[old_state], state_translation_table[state], 0);
}