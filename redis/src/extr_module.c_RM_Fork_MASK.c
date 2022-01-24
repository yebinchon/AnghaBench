#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
struct TYPE_4__ {void* done_handler_user_data; int /*<<< orphan*/  done_handler; } ;
struct TYPE_3__ {int module_child_pid; } ;
typedef  int /*<<< orphan*/  RedisModuleForkDoneHandler ;

/* Variables and functions */
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__ moduleForkInfo ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(RedisModuleForkDoneHandler cb, void *user_data) {
    pid_t childpid;
    if (FUNC1()) {
        return -1;
    }

    FUNC2();
    if ((childpid = FUNC3()) == 0) {
        /* Child */
        FUNC4("redis-module-fork");
    } else if (childpid == -1) {
        FUNC0();
        FUNC5(LL_WARNING,"Can't fork for module: %s", FUNC6(errno));
    } else {
        /* Parent */
        server.module_child_pid = childpid;
        moduleForkInfo.done_handler = cb;
        moduleForkInfo.done_handler_user_data = user_data;
        FUNC5(LL_NOTICE, "Module fork started pid: %d ", childpid);
    }
    return childpid;
}