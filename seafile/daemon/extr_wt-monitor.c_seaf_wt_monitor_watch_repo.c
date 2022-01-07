
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_6__ {int worktree; int type; int repo_id; } ;
typedef TYPE_1__ WatchCommand ;
struct TYPE_7__ {int * res_pipe; int * cmd_pipe; } ;
typedef TYPE_2__ SeafWTMonitor ;


 int CMD_ADD_WATCH ;
 int SEAF_PATH_MAX ;
 int g_strlcpy (int ,char const*,int ) ;
 int memcpy (int ,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int seaf_debug (char*,char const*) ;
 int seaf_pipe_readn (int ,int*,int) ;
 int seaf_pipe_writen (int ,TYPE_1__*,int) ;
 int seaf_warning (char*) ;

int
seaf_wt_monitor_watch_repo (SeafWTMonitor *monitor,
                            const char *repo_id,
                            const char *worktree)
{
    WatchCommand cmd;
    int res;

    memset (&cmd, 0, sizeof(cmd));
    memcpy (cmd.repo_id, repo_id, 37);
    cmd.type = CMD_ADD_WATCH;
    g_strlcpy (cmd.worktree, worktree, SEAF_PATH_MAX);

    int n = seaf_pipe_writen (monitor->cmd_pipe[1], &cmd, sizeof(cmd));

    if (n != sizeof(cmd)) {
        seaf_warning ("[wt mon] fail to write command pipe.\n");
        return -1;
    }

    seaf_debug ("send a watch command, repo %s\n", repo_id);

    n = seaf_pipe_readn (monitor->res_pipe[0], &res, sizeof(int));
    if (n != sizeof(int)) {
        seaf_warning ("[wt mon] fail to read result pipe.\n");
        return -1;
    }

    return res;
}
