
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* gpointer ;
typedef int fd_set ;
typedef int cmd ;
typedef int WatchCommand ;
struct TYPE_6__ {int* cmd_pipe; TYPE_1__* priv; } ;
struct TYPE_5__ {int maxfd; int handle_hash; int read_fds; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;
typedef int GHashTableIter ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 scalar_t__ errno ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,char**,char**) ;
 int handle_watch_command (TYPE_2__*,int *) ;
 int process_events (TYPE_1__*,char*,int) ;
 int seaf_pipe_readn (int,int *,int) ;
 int seaf_warning (char*,...) ;
 int select (int,int *,int *,int *,int *) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void *
wt_monitor_job_linux (void *vmonitor)
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

    FD_SET (monitor->cmd_pipe[0], &priv->read_fds);
    priv->maxfd = monitor->cmd_pipe[0];

    while (1) {
        fds = priv->read_fds;

        rc = select (priv->maxfd + 1, &fds, ((void*)0), ((void*)0), ((void*)0));
        if (rc < 0 && errno == EINTR) {
            continue;
        } else if (rc < 0) {
            seaf_warning ("[wt mon] select error: %s.\n", strerror(errno));
            break;
        }

        if (FD_ISSET (monitor->cmd_pipe[0], &fds)) {
            n = seaf_pipe_readn (monitor->cmd_pipe[0], &cmd, sizeof(cmd));
            if (n != sizeof(cmd)) {
                seaf_warning ("[wt mon] failed to read command.\n");
                continue;
            }
            handle_watch_command (monitor, &cmd);
        }

        g_hash_table_iter_init (&iter, priv->handle_hash);
        while (g_hash_table_iter_next (&iter, &key, &value)) {
            repo_id = key;
            inotify_fd = (int)(long)value;
            if (FD_ISSET (inotify_fd, &fds))
                process_events (priv, repo_id, inotify_fd);
        }
    }

    return ((void*)0);
}
