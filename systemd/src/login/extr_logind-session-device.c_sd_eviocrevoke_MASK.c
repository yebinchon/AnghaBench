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
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  EVIOCREVOKE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static void FUNC3(int fd) {
        static bool warned = false;

        FUNC0(fd >= 0);

        if (FUNC1(fd, EVIOCREVOKE, NULL) < 0) {

                if (errno == EINVAL && !warned) {
                        FUNC2(errno, "Kernel does not support evdev-revocation: %m");
                        warned = true;
                }
        }
}