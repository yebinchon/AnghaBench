
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef int GList ;


 int collect_file_sync_errors ;
 int * g_list_reverse (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int,int) ;
 int sqlite_foreach_selected_row (int ,char*,int ,int **) ;

GList *
seaf_repo_manager_get_file_sync_errors (SeafRepoManager *mgr, int offset, int limit)
{
    GList *ret = ((void*)0);
    char *sql;

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = sqlite3_mprintf ("SELECT id, repo_id, repo_name, path, err_id, timestamp FROM "
                           "FileSyncError ORDER BY id DESC LIMIT %d OFFSET %d",
                           limit, offset);
    sqlite_foreach_selected_row (mgr->priv->db, sql,
                                 collect_file_sync_errors, &ret);
    sqlite3_free (sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    ret = g_list_reverse (ret);

    return ret;
}
