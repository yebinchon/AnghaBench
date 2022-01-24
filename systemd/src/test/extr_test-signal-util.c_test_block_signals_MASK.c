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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGVTALRM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void) {
        sigset_t ss;

        FUNC1(FUNC3(0, NULL, &ss) >= 0);

        FUNC1(FUNC2(&ss, SIGUSR1) == 0);
        FUNC1(FUNC2(&ss, SIGALRM) == 0);
        FUNC1(FUNC2(&ss, SIGVTALRM) == 0);

        {
                FUNC0(SIGUSR1, SIGVTALRM);

                FUNC1(FUNC3(0, NULL, &ss) >= 0);
                FUNC1(FUNC2(&ss, SIGUSR1) == 1);
                FUNC1(FUNC2(&ss, SIGALRM) == 0);
                FUNC1(FUNC2(&ss, SIGVTALRM) == 1);

        }

        FUNC1(FUNC3(0, NULL, &ss) >= 0);
        FUNC1(FUNC2(&ss, SIGUSR1) == 0);
        FUNC1(FUNC2(&ss, SIGALRM) == 0);
        FUNC1(FUNC2(&ss, SIGVTALRM) == 0);
}