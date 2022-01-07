
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafFilelockManager ;


 scalar_t__ SQLITE_DONE ;
 int SQLITE_TRANSIENT ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_warning (char*,char const*,char const*,int ) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int * sqlite_query_prepare (int ,char*) ;

__attribute__((used)) static int
remove_locked_file_from_db (SeafFilelockManager *mgr,
                            const char *repo_id,
                            const char *path)
{
    char *sql;
    sqlite3_stmt *stmt;

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = "DELETE FROM ServerLockedFiles WHERE repo_id = ? AND path = ?";
    stmt = sqlite_query_prepare (mgr->priv->db, sql);
    sqlite3_bind_text (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    sqlite3_bind_text (stmt, 2, path, -1, SQLITE_TRANSIENT);
    if (sqlite3_step (stmt) != SQLITE_DONE) {
        seaf_warning ("Failed to remove locked file %s from %.8s: %s.\n",
                      path, repo_id, sqlite3_errmsg (mgr->priv->db));
        sqlite3_finalize (stmt);
        pthread_mutex_unlock (&mgr->priv->db_lock);
        return -1;
    }
    sqlite3_finalize (stmt);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    return 0;
}
