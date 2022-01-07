
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ gpointer ;
struct TYPE_5__ {int* cmd_pipe; TYPE_1__* priv; } ;
struct TYPE_4__ {int maxfd; int info_hash; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;
typedef int GHashTableIter ;


 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
update_maxfd (SeafWTMonitor *monitor)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    GHashTableIter iter;
    gpointer key, value;
    int fd, maxfd = monitor->cmd_pipe[0];

    g_hash_table_iter_init (&iter, priv->info_hash);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        fd = (int) (long)key;
        if (fd > maxfd)
            maxfd = fd;
    }

    priv->maxfd = maxfd;
}
