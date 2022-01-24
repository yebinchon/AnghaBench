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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void) {
        int fds[3];
        char name0[] = "/tmp/test-close-many.XXXXXX";
        char name1[] = "/tmp/test-close-many.XXXXXX";
        char name2[] = "/tmp/test-close-many.XXXXXX";

        fds[0] = FUNC3(name0);
        fds[1] = FUNC3(name1);
        fds[2] = FUNC3(name2);

        FUNC1(fds, 2);

        FUNC0(FUNC2(fds[0], F_GETFD) == -1);
        FUNC0(FUNC2(fds[1], F_GETFD) == -1);
        FUNC0(FUNC2(fds[2], F_GETFD) >= 0);

        FUNC4(fds[2]);

        FUNC5(name0);
        FUNC5(name1);
        FUNC5(name2);
}