#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* gpointer ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  WatchCommand ;
struct TYPE_6__ {int* cmd_pipe; TYPE_1__* priv; } ;
struct TYPE_5__ {int maxfd; int /*<<< orphan*/  handle_hash; int /*<<< orphan*/  read_fds; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;
typedef  TYPE_2__ SeafWTMonitor ;
typedef  int /*<<< orphan*/  GHashTableIter ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void *
FUNC10 (void *vmonitor)
{
    SeafWTMonitor *monitor = vmonitor;
    SeafWTMonitorPriv *priv = monitor->priv;

    WatchCommand cmd;
    int n;
    int rc;
    fd_set fds;
    int inotify_fd;
    char *repo_id;
    gpointer key, value;
    GHashTableIter iter;

    FUNC1 (monitor->cmd_pipe[0], &priv->read_fds);
    priv->maxfd = monitor->cmd_pipe[0];

    while (1) {
        fds = priv->read_fds;

        rc = FUNC8 (priv->maxfd + 1, &fds, NULL, NULL, NULL);
        if (rc < 0 && errno == EINTR) {
            continue;
        } else if (rc < 0) {
            FUNC7 ("[wt mon] select error: %s.\n", FUNC9(errno));
            break;
        }

        if (FUNC0 (monitor->cmd_pipe[0], &fds)) {
            n = FUNC6 (monitor->cmd_pipe[0], &cmd, sizeof(cmd));
            if (n != sizeof(cmd)) {
                FUNC7 ("[wt mon] failed to read command.\n");
                continue;
            }
            FUNC4 (monitor, &cmd);
        }

        FUNC2 (&iter, priv->handle_hash);
        while (FUNC3 (&iter, &key, &value)) {
            repo_id = key;
            inotify_fd = (int)(long)value;
            if (FUNC0 (inotify_fd, &fds))
                FUNC5 (priv, repo_id, inotify_fd);
        }
    }

    return NULL;
}