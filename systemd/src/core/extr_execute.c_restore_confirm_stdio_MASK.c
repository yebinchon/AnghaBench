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
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int *saved_stdin, int *saved_stdout) {
        int r = 0;

        FUNC0(saved_stdin);
        FUNC0(saved_stdout);

        FUNC2();

        if (*saved_stdin >= 0)
                if (FUNC1(*saved_stdin, STDIN_FILENO) < 0)
                        r = -errno;

        if (*saved_stdout >= 0)
                if (FUNC1(*saved_stdout, STDOUT_FILENO) < 0)
                        r = -errno;

        *saved_stdin = FUNC3(*saved_stdin);
        *saved_stdout = FUNC3(*saved_stdout);

        return r;
}