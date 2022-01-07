
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int hash_lock; int repo_locked_files; int db_lock; int db; } ;
typedef TYPE_2__ SeafFilelockManager ;


 scalar_t__ SQLITE_DONE ;
 int SQLITE_TRANSIENT ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_warning (char*,char const*,int ) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int * sqlite_query_prepare (int ,char*) ;

int
seaf_filelock_manager_remove (SeafFilelockManager *mgr,
                              const char *repo_id)
{
    char *sql;
    sqlite3_stmt *stmt;

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = "DELETE FROM ServerLockedFiles WHERE repo_id = ?";
    stmt = sqlite_query_prepare (mgr->priv->db, sql);
    sqlite3_bind_text (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    if (sqlite3_step (stmt) != SQLITE_DONE) {
        seaf_warning ("Failed to remove server locked files for %.8s: %s.\n",
                      repo_id, sqlite3_errmsg (mgr->priv->db));
        sqlite3_finalize (stmt);
        pthread_mutex_unlock (&mgr->priv->db_lock);
        return -1;
    }
    sqlite3_finalize (stmt);

    sql = "DELETE FROM ServerLockedFilesTimestamp WHERE repo_id = ?";
    stmt = sqlite_query_prepare (mgr->priv->db, sql);
    sqlite3_bind_text (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    if (sqlite3_step (stmt) != SQLITE_DONE) {
        seaf_warning ("Failed to remove server locked files timestamp for %.8s: %s.\n",
                      repo_id, sqlite3_errmsg (mgr->priv->db));
        sqlite3_finalize (stmt);
        pthread_mutex_unlock (&mgr->priv->db_lock);
        return -1;
    }
    sqlite3_finalize (stmt);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    pthread_mutex_lock (&mgr->priv->hash_lock);
    g_hash_table_remove (mgr->priv->repo_locked_files, repo_id);
    pthread_mutex_unlock (&mgr->priv->hash_lock);

    return 0;
}
