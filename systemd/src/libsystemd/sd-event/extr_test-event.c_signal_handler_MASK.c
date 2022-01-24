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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 void* FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  WEXITED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  child_handler ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        sd_event_source *p = NULL;
        pid_t pid;

        FUNC3(*s);
        FUNC3(si);

        FUNC5("got signal on %c", FUNC1(userdata));

        FUNC3(userdata == FUNC0('e'));

        FUNC3(FUNC10(SIG_BLOCK, NULL, SIGCHLD, -1) >= 0);

        pid = FUNC4();
        FUNC3(pid >= 0);

        if (pid == 0)
                FUNC2(EXIT_SUCCESS);

        FUNC3(FUNC6(FUNC7(s), &p, pid, WEXITED, child_handler, FUNC0('f')) >= 0);
        FUNC3(FUNC8(p, SD_EVENT_ONESHOT) >= 0);

        FUNC9(s);

        return 1;
}