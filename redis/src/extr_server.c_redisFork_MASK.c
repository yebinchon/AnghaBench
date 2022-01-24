#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {long long stat_fork_time; double stat_fork_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 long long FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

int FUNC7() {
    int childpid;
    long long start = FUNC5();
    if ((childpid = FUNC1()) == 0) {
        /* Child */
        FUNC0(0);
        FUNC3();
    } else {
        /* Parent */
        server.stat_fork_time = FUNC5()-start;
        server.stat_fork_rate = (double) FUNC6() * 1000000 / server.stat_fork_time / (1024*1024*1024); /* GB per second. */
        FUNC2("fork",server.stat_fork_time/1000);
        if (childpid == -1) {
            return -1;
        }
        FUNC4();
    }
    return childpid;
}