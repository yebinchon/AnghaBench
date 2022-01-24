#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  type; int /*<<< orphan*/  repo_id; } ;
typedef  TYPE_1__ WatchCommand ;
struct TYPE_7__ {int /*<<< orphan*/ * res_pipe; int /*<<< orphan*/ * cmd_pipe; } ;
typedef  TYPE_2__ SeafWTMonitor ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ADD_WATCH ; 
 int /*<<< orphan*/  SEAF_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7 (SeafWTMonitor *monitor,
                            const char *repo_id,
                            const char *worktree)
{
    WatchCommand cmd;
    int res;

    FUNC2 (&cmd, 0, sizeof(cmd));
    FUNC1 (cmd.repo_id, repo_id, 37);
    cmd.type = CMD_ADD_WATCH;
    FUNC0 (cmd.worktree, worktree, SEAF_PATH_MAX);

    int n = FUNC5 (monitor->cmd_pipe[1], &cmd, sizeof(cmd));
    
    if (n != sizeof(cmd)) {
        FUNC6 ("[wt mon] fail to write command pipe.\n");
        return -1;
    }

    FUNC3 ("send a watch command, repo %s\n", repo_id);

    n = FUNC4 (monitor->res_pipe[0], &res, sizeof(int));
    if (n != sizeof(int)) {
        FUNC6 ("[wt mon] fail to read result pipe.\n");
        return -1;
    }

    return res;
}