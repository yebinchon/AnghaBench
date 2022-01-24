#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ si_code; scalar_t__ si_status; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ CLD_EXITED ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(void) {
        pid_t pid;

        pid = FUNC2();
        FUNC1(pid >= 0);

        if (pid > 0) {
                siginfo_t si;

                FUNC1(FUNC6(pid, &si) >= 0);
                FUNC1(si.si_code == CLD_EXITED);
                FUNC1(si.si_status == EXIT_SUCCESS);

                return;
        }

        /* child */
        FUNC4("one", 1);
        FUNC4("more", 0); /* longer than "one", hence truncated */
        (void) FUNC3(99, 99, 99); /* change uid when running privileged */
        FUNC4("time!", 0);
        FUNC4("0", 1); /* shorter than "one", should fit */
        FUNC5("", -EINVAL);
        FUNC5(NULL, -EINVAL);
        FUNC0(EXIT_SUCCESS);
}