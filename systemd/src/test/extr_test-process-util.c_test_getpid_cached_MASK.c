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
struct TYPE_3__ {scalar_t__ si_status; scalar_t__ si_code; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ CLD_EXITED ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(void) {
        siginfo_t si;
        pid_t a, b, c, d, e, f, child;

        a = FUNC5();
        b = FUNC4();
        c = FUNC3();

        FUNC1(a == b && a == c);

        child = FUNC2();
        FUNC1(child >= 0);

        if (child == 0) {
                /* In child */
                a = FUNC5();
                b = FUNC4();
                c = FUNC3();

                FUNC1(a == b && a == c);
                FUNC0(EXIT_SUCCESS);
        }

        d = FUNC5();
        e = FUNC4();
        f = FUNC3();

        FUNC1(a == d && a == e && a == f);

        FUNC1(FUNC6(child, &si) >= 0);
        FUNC1(si.si_status == 0);
        FUNC1(si.si_code == CLD_EXITED);
}