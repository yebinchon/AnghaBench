
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {int seaf_dir; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int db_lock; int hash_lock; int repo_locked_files; int * db; } ;
typedef TYPE_2__ SeafFilelockManager ;


 char* g_build_filename (int ,char*,int *) ;
 int g_free (char*) ;
 int g_hash_table_destroy (int ) ;
 int load_locked_files ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_4__* seaf ;
 scalar_t__ sqlite_foreach_selected_row (int *,char*,int ,int ) ;
 scalar_t__ sqlite_open_db (char*,int **) ;
 int sqlite_query_exec (int *,char*) ;

int
seaf_filelock_manager_init (SeafFilelockManager *mgr)
{
    char *db_path;
    sqlite3 *db;
    char *sql;

    db_path = g_build_filename (seaf->seaf_dir, "filelocks.db", ((void*)0));
    if (sqlite_open_db (db_path, &db) < 0)
        return -1;
    g_free (db_path);
    mgr->priv->db = db;

    sql = "CREATE TABLE IF NOT EXISTS ServerLockedFiles ("
        "repo_id TEXT, path TEXT, locked_by_me INTEGER);";
    sqlite_query_exec (db, sql);

    sql = "CREATE INDEX IF NOT EXISTS server_locked_files_repo_id_idx "
        "ON ServerLockedFiles (repo_id);";
    sqlite_query_exec (db, sql);

    sql = "CREATE TABLE IF NOT EXISTS ServerLockedFilesTimestamp ("
        "repo_id TEXT, timestamp INTEGER, PRIMARY KEY (repo_id));";
    sqlite_query_exec (db, sql);

    sql = "SELECT repo_id, path, locked_by_me FROM ServerLockedFiles";

    pthread_mutex_lock (&mgr->priv->db_lock);
    pthread_mutex_lock (&mgr->priv->hash_lock);

    if (sqlite_foreach_selected_row (mgr->priv->db, sql,
                                     load_locked_files,
                                     mgr->priv->repo_locked_files) < 0) {
        pthread_mutex_unlock (&mgr->priv->db_lock);
        pthread_mutex_unlock (&mgr->priv->hash_lock);
        g_hash_table_destroy (mgr->priv->repo_locked_files);
        return -1;
    }

    pthread_mutex_unlock (&mgr->priv->hash_lock);
    pthread_mutex_unlock (&mgr->priv->db_lock);

    return 0;
}
