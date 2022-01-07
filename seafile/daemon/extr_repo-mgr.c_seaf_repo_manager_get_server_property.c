
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char const*) ;
 char* sqlite_get_string (int ,char*) ;

char *
seaf_repo_manager_get_server_property (SeafRepoManager *mgr,
                                       const char *server_url,
                                       const char *key)
{
    char *sql = sqlite3_mprintf ("SELECT value FROM ServerProperty WHERE "
                                 "server_url=%Q AND key=%Q;",
                                 server_url, key);
    char *value;

    pthread_mutex_lock (&mgr->priv->db_lock);

    value = sqlite_get_string (mgr->priv->db, sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    sqlite3_free (sql);
    return value;
}
