#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UnitActiveState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EXIT_PROGRAM_NOT_RUNNING ; 
#define  UNIT_ACTIVE 129 
#define  UNIT_RELOADING 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,int) ; 

__attribute__((used)) static int FUNC3(int argc, char *argv[], void *userdata) {
        static const UnitActiveState states[] = {
                UNIT_ACTIVE,
                UNIT_RELOADING,
        };

        /* According to LSB: 3, "program is not running" */
        return FUNC1(EXIT_PROGRAM_NOT_RUNNING, states, FUNC0(states), FUNC2(argv, 1));
}