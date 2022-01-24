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
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  repo_id; } ;
typedef  TYPE_1__ WatchCommand ;
struct TYPE_7__ {int /*<<< orphan*/ * res_pipe; int /*<<< orphan*/ * cmd_pipe; } ;
typedef  TYPE_2__ SeafWTMonitor ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DELETE_WATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6 (SeafWTMonitor *monitor, const char *repo_id)
{
    WatchCommand cmd;
    int res;

    FUNC1 (&cmd, 0, sizeof(cmd));
    FUNC0 (cmd.repo_id, repo_id, 37);
    cmd.type = CMD_DELETE_WATCH;

    int n = FUNC4 (monitor->cmd_pipe[1], &cmd, sizeof(cmd));

    if (n != sizeof(cmd)) {
        FUNC5 ("[wt mon] fail to write command pipe.\n");
        return -1;
    }

    FUNC2 ("send an unwatch command, repo %s\n", repo_id);

    n = FUNC3 (monitor->res_pipe[0], &res, sizeof(int));
    if (n != sizeof(int)) {
        FUNC5 ("[wt mon] fail to read result pipe.\n");
        return -1;
    }

    return res;
}