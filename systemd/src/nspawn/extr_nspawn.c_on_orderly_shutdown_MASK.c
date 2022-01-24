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
struct signalfd_siginfo {int dummy; } ;
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  arg_kill_signal ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        pid_t pid;

        pid = FUNC0(userdata);
        if (pid > 0) {
                if (FUNC1(pid, arg_kill_signal) >= 0) {
                        FUNC2("Trying to halt container. Send SIGTERM again to trigger immediate termination.");
                        FUNC5(s, NULL);
                        return 0;
                }
        }

        FUNC3(FUNC4(s), 0);
        return 0;
}