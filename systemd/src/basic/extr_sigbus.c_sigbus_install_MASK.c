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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int n_installed ; 
 int /*<<< orphan*/  old_sigaction ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigbus_handler ; 

void FUNC3(void) {
        struct sigaction sa = {
                .sa_sigaction = sigbus_handler,
                .sa_flags = SA_SIGINFO,
        };

        /* make sure that sysconf() is not called from a signal handler because
        * it is not guaranteed to be async-signal-safe since POSIX.1-2008 */
        (void) FUNC1();

        n_installed++;

        if (n_installed == 1)
                FUNC0(FUNC2(SIGBUS, &sa, &old_sigaction) == 0);

        return;
}