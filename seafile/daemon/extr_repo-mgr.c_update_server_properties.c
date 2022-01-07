
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;


 int REPO_PROP_SERVER_URL ;
 int g_free (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 char* seaf_repo_manager_get_repo_property (TYPE_2__*,char const*,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char*) ;
 int sqlite_query_exec (int ,char*) ;

__attribute__((used)) static void
update_server_properties (SeafRepoManager *mgr,
                          const char *repo_id,
                          const char *new_server_url)
{
    char *old_server_url = ((void*)0);
    char *sql = ((void*)0);

    old_server_url = seaf_repo_manager_get_repo_property (mgr, repo_id,
                                                          REPO_PROP_SERVER_URL);
    if (!old_server_url)
        return;

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = sqlite3_mprintf ("UPDATE ServerProperty SET server_url=%Q WHERE "
                           "server_url=%Q;", new_server_url, old_server_url);
    sqlite_query_exec (mgr->priv->db, sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    sqlite3_free (sql);
    g_free (old_server_url);
}
