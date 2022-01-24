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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void (*test_func)(void)) {
        pid_t pid = 0;

        pid = FUNC4();
        FUNC2(pid >= 0);
        if (pid == 0) {
                test_func();
                FUNC3(EXIT_SUCCESS);
        } else if (pid > 0) {
                int status;

                FUNC2(FUNC5(pid, &status, 0) > 0);
                FUNC2(FUNC1(status) && FUNC0(status) == 0);
        }
}