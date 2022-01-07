
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_13__ {char* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {int locked_by_me; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int db_lock; int db; int * repo_locked_files; } ;
typedef TYPE_2__ SeafFilelockManager ;
typedef TYPE_3__ LockInfo ;
typedef TYPE_4__ GList ;
typedef int GHashTable ;


 scalar_t__ SQLITE_DONE ;
 int SQLITE_TRANSIENT ;
 int compare_paths ;
 TYPE_4__* g_hash_table_get_keys (int *) ;
 void* g_hash_table_lookup (int *,char const*) ;
 scalar_t__ g_hash_table_size (int *) ;
 int g_list_free (TYPE_4__*) ;
 TYPE_4__* g_list_sort (TYPE_4__*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_warning (char*,char const*,int ) ;
 int sqlite3_bind_int (int *,int,int ) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_clear_bindings (int *) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int * sqlite_query_prepare (int ,char*) ;

__attribute__((used)) static int
update_db (SeafFilelockManager *mgr, const char *repo_id)
{
    char *sql;
    sqlite3_stmt *stmt;
    GHashTable *locks;
    GList *paths, *ptr;
    char *path;
    LockInfo *info;

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

    locks = g_hash_table_lookup (mgr->priv->repo_locked_files, repo_id);
    if (!locks || g_hash_table_size (locks) == 0) {
        pthread_mutex_unlock (&mgr->priv->db_lock);
        return 0;
    }

    paths = g_hash_table_get_keys (locks);
    paths = g_list_sort (paths, compare_paths);

    sql = "INSERT INTO ServerLockedFiles (repo_id, path, locked_by_me) VALUES (?, ?, ?)";
    stmt = sqlite_query_prepare (mgr->priv->db, sql);

    for (ptr = paths; ptr; ptr = ptr->next) {
        path = ptr->data;
        info = g_hash_table_lookup (locks, path);

        sqlite3_bind_text (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
        sqlite3_bind_text (stmt, 2, path, -1, SQLITE_TRANSIENT);
        sqlite3_bind_int (stmt, 3, info->locked_by_me);

        if (sqlite3_step (stmt) != SQLITE_DONE) {
            seaf_warning ("Failed to insert server file lock for %.8s: %s.\n",
                          repo_id, sqlite3_errmsg (mgr->priv->db));
            sqlite3_finalize (stmt);
            pthread_mutex_unlock (&mgr->priv->db_lock);
            return -1;
        }

        sqlite3_reset (stmt);
        sqlite3_clear_bindings (stmt);
    }

    sqlite3_finalize (stmt);
    g_list_free (paths);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    return 0;
}
