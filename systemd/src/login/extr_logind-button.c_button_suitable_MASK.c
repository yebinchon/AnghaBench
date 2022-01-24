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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  KEY_POWER2 ; 
 int /*<<< orphan*/  KEY_SLEEP ; 
 int /*<<< orphan*/  KEY_SUSPEND ; 
 int /*<<< orphan*/  SW_DOCK ; 
 int /*<<< orphan*/  SW_LID ; 
 int ULONG_BITS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long*,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC6(int fd) {
        unsigned long types[FUNC0(EV_KEY, EV_SW)/ULONG_BITS+1];

        FUNC3(fd >= 0);

        if (FUNC5(fd, FUNC2(EV_SYN, sizeof types), types) < 0)
                return -errno;

        if (FUNC4(types, EV_KEY)) {
                unsigned long keys[FUNC1(KEY_POWER, KEY_POWER2, KEY_SLEEP, KEY_SUSPEND)/ULONG_BITS+1];

                if (FUNC5(fd, FUNC2(EV_KEY, sizeof keys), keys) < 0)
                        return -errno;

                if (FUNC4(keys, KEY_POWER) ||
                    FUNC4(keys, KEY_POWER2) ||
                    FUNC4(keys, KEY_SLEEP) ||
                    FUNC4(keys, KEY_SUSPEND))
                        return true;
        }

        if (FUNC4(types, EV_SW)) {
                unsigned long switches[FUNC0(SW_LID, SW_DOCK)/ULONG_BITS+1];

                if (FUNC5(fd, FUNC2(EV_SW, sizeof switches), switches) < 0)
                        return -errno;

                if (FUNC4(switches, SW_LID) ||
                    FUNC4(switches, SW_DOCK))
                        return true;
        }

        return false;
}