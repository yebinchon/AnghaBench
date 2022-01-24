#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  sha1; } ;
typedef  scalar_t__ gint64 ;
typedef  scalar_t__ gboolean ;
struct TYPE_14__ {int /*<<< orphan*/  sync_mgr; int /*<<< orphan*/  filelock_mgr; } ;
struct TYPE_13__ {scalar_t__ changeset; scalar_t__ fset; scalar_t__ startup_scan; int /*<<< orphan*/  is_repo_ro; } ;
struct TYPE_12__ {scalar_t__ old_mtime; int /*<<< orphan*/  operation; } ;
struct TYPE_11__ {scalar_t__ st_mtime; scalar_t__ st_size; } ;
typedef  scalar_t__ SyncStatus ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ LockedFile ;
typedef  int /*<<< orphan*/  GQueue ;
typedef  TYPE_3__ AddOptions ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_ADDED ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LOCKED_OP_DELETE ; 
 int /*<<< orphan*/  LOCKED_OP_UPDATE ; 
 scalar_t__ MAX_COMMIT_SIZE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_INDEX_ERROR ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO ; 
 scalar_t__ SYNC_STATUS_ERROR ; 
 scalar_t__ SYNC_STATUS_SYNCED ; 
 scalar_t__ SYNC_STATUS_SYNCING ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int,struct index_state*,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct cache_entry*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_cb ; 
 struct cache_entry* FUNC6 (struct index_state*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC8 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*,scalar_t__) ; 
 TYPE_4__* seaf ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

__attribute__((used)) static int
FUNC15 (const char *repo_id,
          int version,
          const char *modifier,
          struct index_state *istate, 
          const char *path,
          const char *full_path,
          SeafStat *st,
          SeafileCrypt *crypt,
          gint64 *total_size,
          GQueue **remain_files,
          AddOptions *options)
{
    gboolean added = FALSE;
    int ret = 0;
    gboolean is_writable = TRUE, is_locked = FALSE;
    struct cache_entry *ce;

    if (options)
        is_writable = FUNC7(repo_id,
                                       options->is_repo_ro, path);

    is_locked = FUNC10 (seaf->filelock_mgr,
                                                      repo_id, path);
    if (is_locked && options && !(options->startup_scan)) {
        /* send_sync_error_notification (repo_id, NULL, path, */
        /*                               SYNC_ERROR_ID_FILE_LOCKED); */
    }

    if (options && options->startup_scan) {
        SyncStatus status;

        ce = FUNC6 (istate, path, FUNC14(path), 0);
        if (!ce || FUNC5(ce, st, 0) != 0)
            status = SYNC_STATUS_SYNCING;
        else
            status = SYNC_STATUS_SYNCED;

        /* Don't set "syncing" status for read-only path. */
        if (status == SYNC_STATUS_SYNCED || (is_writable && !is_locked))
            FUNC11 (seaf->sync_mgr,
                                                  repo_id,
                                                  path,
                                                  S_IFREG,
                                                  status);
        /* send an error notification for read-only repo when modifying a file. */
        if (status == SYNC_STATUS_SYNCING && !is_writable)
            FUNC12 (repo_id, NULL, path,
                                               SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO);
    }

    if (!is_writable || is_locked)
        return ret;

#if defined WIN32 || defined __APPLE__
    if (options && options->fset) {
        LockedFile *file = locked_file_set_lookup (options->fset, path);
        if (file) {
            if (strcmp (file->operation, LOCKED_OP_DELETE) == 0) {
                /* Only remove the lock record if the file is changed. */
                if (st->st_mtime == file->old_mtime) {
                    return ret;
                }
                locked_file_set_remove (options->fset, path, FALSE);
            } else if (strcmp (file->operation, LOCKED_OP_UPDATE) == 0) {
                return ret;
            }
        }
    }
#endif

    if (!remain_files) {
        ret = FUNC1 (repo_id, version, istate, path, full_path,
                            st, 0, crypt, index_cb, modifier, &added);
        if (!added) {
            /* If the contents of the file doesn't change, move it to
               synced status.
            */
            FUNC11 (seaf->sync_mgr,
                                                  repo_id,
                                                  path,
                                                  S_IFREG,
                                                  SYNC_STATUS_SYNCED);
        } else {
            if (total_size)
                *total_size += (gint64)(st->st_size);
            if (options && options->changeset) {
                /* ce may be updated. */
                ce = FUNC6 (istate, path, FUNC14(path), 0);
                FUNC0 (options->changeset,
                                  DIFF_STATUS_ADDED,
                                  ce->sha1,
                                  st,
                                  modifier,
                                  path,
                                  NULL);
            }
        }
    } else if (*remain_files == NULL) {
        ret = FUNC1 (repo_id, version, istate, path, full_path,
                            st, 0, crypt, index_cb, modifier, &added);
        if (added) {
            *total_size += (gint64)(st->st_size);
            if (*total_size >= MAX_COMMIT_SIZE)
                *remain_files = FUNC2 ();
        } else {
            FUNC11 (seaf->sync_mgr,
                                                  repo_id,
                                                  path,
                                                  S_IFREG,
                                                  SYNC_STATUS_SYNCED);
        }
        if (added && options && options->changeset) {
            /* ce may be updated. */
            ce = FUNC6 (istate, path, FUNC14(path), 0);
            FUNC0 (options->changeset,
                              DIFF_STATUS_ADDED,
                              ce->sha1,
                              st,
                              modifier,
                              path,
                              NULL);
        }
    } else {
        *total_size += (gint64)(st->st_size);
        FUNC3 (*remain_files, FUNC4(path));
    }

    if (ret < 0) {
        FUNC11 (seaf->sync_mgr,
                                              repo_id,
                                              path,
                                              S_IFREG,
                                              SYNC_STATUS_ERROR);
        FUNC12 (repo_id, NULL, path,
                                           SYNC_ERROR_ID_INDEX_ERROR);
    }

    return ret;
}