
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char const* gpointer ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int hash_lock; int info_hash; int handle_hash; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;
typedef scalar_t__ FSEventStreamRef ;


 int FSEventStreamInvalidate (scalar_t__) ;
 int FSEventStreamRelease (scalar_t__) ;
 int FSEventStreamStop (scalar_t__) ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int
handle_rm_repo (SeafWTMonitor *monitor, const char *repo_id, gpointer handle)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    FSEventStreamRef stream = (FSEventStreamRef)handle;
    FSEventStreamStop (stream);
    FSEventStreamInvalidate (stream);
    FSEventStreamRelease (stream);

    pthread_mutex_lock (&priv->hash_lock);
    g_hash_table_remove (priv->handle_hash, repo_id);
    g_hash_table_remove (priv->info_hash, (gpointer)(long)stream);
    pthread_mutex_unlock (&priv->hash_lock);
    return 0;
}
