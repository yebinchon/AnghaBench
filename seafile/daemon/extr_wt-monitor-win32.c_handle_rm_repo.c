
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const* gpointer ;
struct TYPE_3__ {int hash_lock; int info_hash; int handle_hash; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;


 int CloseHandle (char const*) ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int handle_rm_repo (SeafWTMonitorPriv *priv, const char *repo_id, gpointer handle)
{
    pthread_mutex_lock (&priv->hash_lock);
    g_hash_table_remove (priv->handle_hash, repo_id);
    g_hash_table_remove (priv->info_hash, handle);
    pthread_mutex_unlock (&priv->hash_lock);






    CloseHandle (handle);

    return 0;
}
