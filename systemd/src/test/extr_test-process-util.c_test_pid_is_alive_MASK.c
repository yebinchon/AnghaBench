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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void) {
        pid_t pid;

        pid = FUNC2();
        FUNC1(pid >= 0);
        if (pid == 0) {
                FUNC0(EXIT_SUCCESS);
        } else {
                int status;

                FUNC5(pid, &status, 0);
                FUNC1(!FUNC4(pid));
        }
        FUNC1(FUNC4(FUNC3()));
        FUNC1(!FUNC4(-1));
}