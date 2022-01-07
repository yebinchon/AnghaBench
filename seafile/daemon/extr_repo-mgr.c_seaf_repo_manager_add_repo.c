
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int sql ;
struct TYPE_10__ {char* id; TYPE_2__* manager; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int lock; int repo_hash; int db_lock; int * db; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;


 int g_hash_table_insert (int ,int ,TYPE_3__*) ;
 int g_strdup (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 scalar_t__ pthread_rwlock_wrlock (int *) ;
 int seaf_repo_manager_remove_garbage_repo (TYPE_2__*,char*) ;
 int seaf_warning (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int sqlite_query_exec (int *,char*) ;

int
seaf_repo_manager_add_repo (SeafRepoManager *manager,
                            SeafRepo *repo)
{
    char sql[256];
    sqlite3 *db = manager->priv->db;

    pthread_mutex_lock (&manager->priv->db_lock);

    snprintf (sql, sizeof(sql), "REPLACE INTO Repo VALUES ('%s');", repo->id);
    sqlite_query_exec (db, sql);

    pthread_mutex_unlock (&manager->priv->db_lock);




    seaf_repo_manager_remove_garbage_repo (manager, repo->id);

    repo->manager = manager;

    if (pthread_rwlock_wrlock (&manager->priv->lock) < 0) {
        seaf_warning ("[repo mgr] failed to lock repo cache.\n");
        return -1;
    }

    g_hash_table_insert (manager->priv->repo_hash, g_strdup(repo->id), repo);

    pthread_rwlock_unlock (&manager->priv->lock);

    return 0;
}
