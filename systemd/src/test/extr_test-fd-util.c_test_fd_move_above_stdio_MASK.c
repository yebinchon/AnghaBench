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
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  F_DUPFD ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void) {
        int original_stdin, new_fd;

        original_stdin = FUNC3(0, F_DUPFD, 3);
        FUNC0(original_stdin >= 3);
        FUNC0(FUNC1(0) != EBADF);

        new_fd = FUNC5("/dev/null", O_RDONLY);
        FUNC0(new_fd == 0);

        new_fd = FUNC4(new_fd);
        FUNC0(new_fd >= 3);

        FUNC0(FUNC2(original_stdin) == 0);
        FUNC0(FUNC1(original_stdin) != EBADF);
        FUNC0(FUNC1(new_fd) != EBADF);
}