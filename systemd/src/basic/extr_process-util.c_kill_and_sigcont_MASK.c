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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int SIGCONT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(pid_t pid, int sig) {
        int r;

        r = FUNC1(pid, sig) < 0 ? -errno : 0;

        /* If this worked, also send SIGCONT, unless we already just sent a SIGCONT, or SIGKILL was sent which isn't
         * affected by a process being suspended anyway. */
        if (r >= 0 && !FUNC0(sig, SIGCONT, SIGKILL))
                (void) FUNC1(pid, SIGCONT);

        return r;
}