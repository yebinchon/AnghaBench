
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxfd; int read_fds; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;


 int FD_SET (int,int *) ;
 int MAX (int,int ) ;
 int add_watch (TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static int handle_add_repo (SeafWTMonitorPriv *priv,
                            const char *repo_id,
                            const char *worktree)
{
    int inotify_fd;

    inotify_fd = add_watch (priv, repo_id, worktree);
    if (inotify_fd < 0) {
        return -1;
    }

    FD_SET (inotify_fd, &priv->read_fds);
    priv->maxfd = MAX (inotify_fd, priv->maxfd);
    return 0;
}
