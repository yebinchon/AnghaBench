#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
struct TYPE_15__ {int /*<<< orphan*/  filelock_mgr; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_14__ {int /*<<< orphan*/  synced_tree; int /*<<< orphan*/  syncing_tree; int /*<<< orphan*/  paths; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {scalar_t__ in_error; } ;
struct TYPE_11__ {int /*<<< orphan*/  paths_lock; int /*<<< orphan*/  active_paths; } ;
typedef  size_t SyncStatus ;
typedef  TYPE_2__ SyncInfo ;
typedef  TYPE_3__ SeafSyncManager ;
typedef  TYPE_4__ ActivePathsInfo ;

/* Variables and functions */
 size_t SYNC_STATUS_LOCKED ; 
 size_t SYNC_STATUS_LOCKED_BY_ME ; 
 size_t SYNC_STATUS_NONE ; 
 size_t SYNC_STATUS_READONLY ; 
 size_t SYNC_STATUS_SYNCED ; 
 size_t SYNC_STATUS_SYNCING ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_3__*,char const*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/ * path_status_tbl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_6__* seaf ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*) ; 

char *
FUNC11 (SeafSyncManager *mgr,
                                        const char *repo_id,
                                        const char *path,
                                        gboolean is_dir)
{
    ActivePathsInfo *info;
    SyncInfo *sync_info;
    SyncStatus ret = SYNC_STATUS_NONE;

    if (!repo_id || !path) {
        FUNC9 ("BUG: empty repo_id or path.\n");
        return NULL;
    }

    if (path[0] == 0) {
        return FUNC2 (mgr, repo_id);
    }

    /* If the repo is in error, all files in it should show no sync status. */
    sync_info = FUNC3 (mgr, repo_id);
    if (sync_info && sync_info->in_error) {
        ret = SYNC_STATUS_NONE;
        goto out;
    }

    FUNC4 (&mgr->priv->paths_lock);

    info = FUNC0 (mgr->priv->active_paths, repo_id);
    if (!info) {
        FUNC5 (&mgr->priv->paths_lock);
        ret = SYNC_STATUS_NONE;
        goto out;
    }

    ret = (SyncStatus) FUNC0 (info->paths, path);
    if (is_dir && (ret == SYNC_STATUS_NONE)) {
        /* If a dir is not in the syncing tree but in the synced tree,
         * it's synced. Otherwise if it's in the syncing tree, some files
         * under it must be syncing, so it should be in syncing status too.
         */
        if (FUNC10 (info->syncing_tree, path))
            ret = SYNC_STATUS_SYNCING;
        else if (FUNC10 (info->synced_tree, path))
            ret = SYNC_STATUS_SYNCED;
    }

    FUNC5 (&mgr->priv->paths_lock);

    if (ret == SYNC_STATUS_SYNCED) {
        if (!FUNC8(seaf->repo_mgr, repo_id, path))
            ret = SYNC_STATUS_READONLY;
        else if (FUNC7 (seaf->filelock_mgr,
                                                             repo_id, path))
            ret = SYNC_STATUS_LOCKED_BY_ME;
        else if (FUNC6 (seaf->filelock_mgr,
                                                       repo_id, path))
            ret = SYNC_STATUS_LOCKED;
    }

out:
    return FUNC1(path_status_tbl[ret]);
}