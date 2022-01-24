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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

bool
FUNC3(pid_t pid) {
    if (pid <= 0) {
        FUNC0("Requested to kill %d, this is an error. Please report the bug.\n",
             (int) pid);
        FUNC1();
    }
    return FUNC2(pid, SIGTERM) != -1;
}