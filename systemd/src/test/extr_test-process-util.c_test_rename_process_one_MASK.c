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
 scalar_t__ EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(const char *p, int ret) {
        siginfo_t si;
        pid_t pid;

        pid = FUNC2();
        FUNC1(pid >= 0);

        if (pid == 0) {
                /* child */
                FUNC3(p, ret);
                FUNC0(EXIT_SUCCESS);
        }

        FUNC1(FUNC4(pid, &si) >= 0);
        FUNC1(si.si_code == CLD_EXITED);
        FUNC1(si.si_status == EXIT_SUCCESS);
}