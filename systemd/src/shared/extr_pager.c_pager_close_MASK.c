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
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pager_pid ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int stderr_redirected ; 
 int /*<<< orphan*/  stdout ; 
 int stdout_redirected ; 
 scalar_t__ stored_stderr ; 
 scalar_t__ stored_stdout ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC6(void) {

        if (pager_pid <= 0)
                return;

        /* Inform pager that we are done */
        (void) FUNC2(stdout);
        if (stdout_redirected)
                if (stored_stdout < 0 || FUNC1(stored_stdout, STDOUT_FILENO) < 0)
                        (void) FUNC0(STDOUT_FILENO);
        stored_stdout = FUNC4(stored_stdout);
        (void) FUNC2(stderr);
        if (stderr_redirected)
                if (stored_stderr < 0 || FUNC1(stored_stderr, STDERR_FILENO) < 0)
                        (void) FUNC0(STDERR_FILENO);
        stored_stderr = FUNC4(stored_stderr);
        stdout_redirected = stderr_redirected = false;

        (void) FUNC3(pager_pid, SIGCONT);
        (void) FUNC5(pager_pid, NULL);
        pager_pid = 0;
}