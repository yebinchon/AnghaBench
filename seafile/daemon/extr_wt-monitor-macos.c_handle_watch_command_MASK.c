#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  worktree; } ;
typedef  TYPE_1__ WatchCommand ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  handle_hash; } ;
typedef  TYPE_2__ SeafWTMonitorPriv ;
typedef  TYPE_3__ SeafWTMonitor ;

/* Variables and functions */
 scalar_t__ CMD_ADD_WATCH ; 
 scalar_t__ CMD_DELETE_WATCH ; 
 scalar_t__ CMD_REFRESH_WATCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (SeafWTMonitor *monitor, WatchCommand *cmd)
{
    SeafWTMonitorPriv *priv = monitor->priv;

    if (cmd->type == CMD_ADD_WATCH) {
        if (FUNC0 (priv->handle_hash, cmd->repo_id,
                                          NULL, NULL)) {
            FUNC4 (monitor, 0);
            return;
        }

        if (FUNC1(monitor, cmd->repo_id, cmd->worktree) < 0) {
            FUNC6 ("[wt mon] failed to watch worktree of repo %s.\n",
                          cmd->repo_id);
            FUNC4 (monitor, -1);
            return;
        }

        FUNC5 ("[wt mon] add watch for repo %s\n", cmd->repo_id);
        FUNC4 (monitor, 0);
    } else if (cmd->type == CMD_DELETE_WATCH) {
        gpointer key, value;
        if (!FUNC0 (priv->handle_hash, cmd->repo_id,
                                           &key, &value)) {
            FUNC4 (monitor, 0);
            return;
        }

        FUNC3 (monitor, cmd->repo_id, value);
        FUNC4 (monitor, 0);
    } else if (cmd->type ==  CMD_REFRESH_WATCH) {
        if (FUNC2 (monitor, cmd->repo_id) < 0) {
            FUNC6 ("[wt mon] failed to refresh watch of repo %s.\n",
                          cmd->repo_id);
            FUNC4 (monitor, -1);
            return;
        }
        FUNC4 (monitor, 0);
    }
}