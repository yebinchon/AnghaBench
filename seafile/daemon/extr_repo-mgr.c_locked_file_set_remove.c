
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int gboolean ;
struct TYPE_7__ {char const* repo_id; int locked_files; TYPE_2__* mgr; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ LockedFileSet ;


 scalar_t__ SQLITE_DONE ;
 int SQLITE_TRANSIENT ;
 int * g_hash_table_lookup (int ,char const*) ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_debug (char*,char const*,char const*) ;
 int seaf_warning (char*,char const*,int ) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int * sqlite_query_prepare (int ,char*) ;

int
locked_file_set_remove (LockedFileSet *fset, const char *path, gboolean db_only)
{
    SeafRepoManager *mgr = fset->mgr;
    char *sql;
    sqlite3_stmt *stmt;

    if (g_hash_table_lookup (fset->locked_files, path) == ((void*)0))
        return 0;

    seaf_debug ("Remove locked file record %.8s, %s.\n",
                fset->repo_id, path);

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = "DELETE FROM LockedFiles WHERE repo_id = ? AND path = ?";
    stmt = sqlite_query_prepare (mgr->priv->db, sql);
    sqlite3_bind_text (stmt, 1, fset->repo_id, -1, SQLITE_TRANSIENT);
    sqlite3_bind_text (stmt, 2, path, -1, SQLITE_TRANSIENT);
    if (sqlite3_step (stmt) != SQLITE_DONE) {
        seaf_warning ("Failed to remove locked file %s from db: %s.\n",
                      path, sqlite3_errmsg (mgr->priv->db));
        sqlite3_finalize (stmt);
        pthread_mutex_unlock (&mgr->priv->db_lock);
        return -1;
    }
    sqlite3_finalize (stmt);
    pthread_mutex_unlock (&mgr->priv->db_lock);

    if (!db_only)
        g_hash_table_remove (fset->locked_files, path);

    return 0;
}
