
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;


 char* canonical_server_url (char const*) ;
 int g_free (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*,char const*,char const*) ;
 int sqlite_query_exec (int ,char*) ;

int
seaf_repo_manager_set_server_property (SeafRepoManager *mgr,
                                       const char *server_url,
                                       const char *key,
                                       const char *value)
{
    char *sql;
    int ret;
    char *canon_server_url = canonical_server_url(server_url);

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = sqlite3_mprintf ("REPLACE INTO ServerProperty VALUES (%Q, %Q, %Q);",
                           canon_server_url, key, value);
    ret = sqlite_query_exec (mgr->priv->db, sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    sqlite3_free (sql);
    g_free (canon_server_url);
    return ret;
}
