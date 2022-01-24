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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *buf, size_t buflen, const char *prompt) {
    int count;

    if (buflen == 0) {
        errno = EINVAL;
        return -1;
    }

    if (FUNC1(STDIN_FILENO) == -1) return -1;
    count = FUNC2(STDIN_FILENO, STDOUT_FILENO, buf, buflen, prompt);
    FUNC0(STDIN_FILENO);
    FUNC3("\n");
    return count;
}