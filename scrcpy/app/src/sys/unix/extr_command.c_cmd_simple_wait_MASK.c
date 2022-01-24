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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

bool
FUNC3(pid_t pid, int *exit_code) {
    int status;
    int code;
    if (FUNC2(pid, &status, 0) == -1 || !FUNC1(status)) {
        // could not wait, or exited unexpectedly, probably by a signal
        code = -1;
    } else {
        code = FUNC0(status);
    }
    if (exit_code) {
        *exit_code = code;
    }
    return !code;
}