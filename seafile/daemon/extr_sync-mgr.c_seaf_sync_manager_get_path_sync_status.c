
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_15__ {int filelock_mgr; int repo_mgr; } ;
struct TYPE_14__ {int synced_tree; int syncing_tree; int paths; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {scalar_t__ in_error; } ;
struct TYPE_11__ {int paths_lock; int active_paths; } ;
typedef size_t SyncStatus ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafSyncManager ;
typedef TYPE_4__ ActivePathsInfo ;


 size_t SYNC_STATUS_LOCKED ;
 size_t SYNC_STATUS_LOCKED_BY_ME ;
 size_t SYNC_STATUS_NONE ;
 size_t SYNC_STATUS_READONLY ;
 size_t SYNC_STATUS_SYNCED ;
 size_t SYNC_STATUS_SYNCING ;
 TYPE_4__* g_hash_table_lookup (int ,char const*) ;
 char* g_strdup (int ) ;
 char* get_repo_sync_status (TYPE_3__*,char const*) ;
 TYPE_2__* get_sync_info (TYPE_3__*,char const*) ;
 int * path_status_tbl ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_6__* seaf ;
 scalar_t__ seaf_filelock_manager_is_file_locked (int ,char const*,char const*) ;
 scalar_t__ seaf_filelock_manager_is_file_locked_by_me (int ,char const*,char const*) ;
 int seaf_repo_manager_is_path_writable (int ,char const*,char const*) ;
 int seaf_warning (char*) ;
 scalar_t__ sync_status_tree_exists (int ,char const*) ;

char *
seaf_sync_manager_get_path_sync_status (SeafSyncManager *mgr,
                                        const char *repo_id,
                                        const char *path,
                                        gboolean is_dir)
{
    ActivePathsInfo *info;
    SyncInfo *sync_info;
    SyncStatus ret = SYNC_STATUS_NONE;

    if (!repo_id || !path) {
        seaf_warning ("BUG: empty repo_id or path.\n");
        return ((void*)0);
    }

    if (path[0] == 0) {
        return get_repo_sync_status (mgr, repo_id);
    }


    sync_info = get_sync_info (mgr, repo_id);
    if (sync_info && sync_info->in_error) {
        ret = SYNC_STATUS_NONE;
        goto out;
    }

    pthread_mutex_lock (&mgr->priv->paths_lock);

    info = g_hash_table_lookup (mgr->priv->active_paths, repo_id);
    if (!info) {
        pthread_mutex_unlock (&mgr->priv->paths_lock);
        ret = SYNC_STATUS_NONE;
        goto out;
    }

    ret = (SyncStatus) g_hash_table_lookup (info->paths, path);
    if (is_dir && (ret == SYNC_STATUS_NONE)) {




        if (sync_status_tree_exists (info->syncing_tree, path))
            ret = SYNC_STATUS_SYNCING;
        else if (sync_status_tree_exists (info->synced_tree, path))
            ret = SYNC_STATUS_SYNCED;
    }

    pthread_mutex_unlock (&mgr->priv->paths_lock);

    if (ret == SYNC_STATUS_SYNCED) {
        if (!seaf_repo_manager_is_path_writable(seaf->repo_mgr, repo_id, path))
            ret = SYNC_STATUS_READONLY;
        else if (seaf_filelock_manager_is_file_locked_by_me (seaf->filelock_mgr,
                                                             repo_id, path))
            ret = SYNC_STATUS_LOCKED_BY_ME;
        else if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                       repo_id, path))
            ret = SYNC_STATUS_LOCKED;
    }

out:
    return g_strdup(path_status_tbl[ret]);
}
