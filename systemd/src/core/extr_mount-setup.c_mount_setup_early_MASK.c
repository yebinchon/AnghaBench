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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ N_EARLY_MOUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  mount_table ; 

int FUNC3(void) {
        FUNC1(N_EARLY_MOUNT <= FUNC0(mount_table));

        /* Do a minimal mount of /proc and friends to enable the most
         * basic stuff, such as SELinux */
        return FUNC2(N_EARLY_MOUNT, false);
}