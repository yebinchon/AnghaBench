
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char const* gpointer ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int hash_lock; int info_hash; int handle_hash; int read_fds; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;


 int FD_CLR (int,int *) ;
 int close (int) ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int update_maxfd (TYPE_2__*) ;

__attribute__((used)) static int handle_rm_repo (SeafWTMonitor *monitor,
                           const char *repo_id,
                           gpointer handle)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    int inotify_fd = (int)(long)handle;

    close (inotify_fd);
    FD_CLR (inotify_fd, &priv->read_fds);
    update_maxfd (monitor);

    pthread_mutex_lock (&priv->hash_lock);
    g_hash_table_remove (priv->handle_hash, repo_id);
    g_hash_table_remove (priv->info_hash, (gpointer)(long)inotify_fd);
    pthread_mutex_unlock (&priv->hash_lock);

    return 0;
}
