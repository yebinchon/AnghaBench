#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_18__ ;

/* Type definitions */
struct index_state {scalar_t__ cache_changed; } ;
struct TYPE_28__ {int /*<<< orphan*/  sec; } ;
struct cache_entry {TYPE_1__ ce_mtime; } ;
typedef  int /*<<< orphan*/  istate ;
typedef  scalar_t__ gboolean ;
struct TYPE_35__ {char* index_dir; } ;
struct TYPE_34__ {scalar_t__ status; scalar_t__ size; int /*<<< orphan*/  name; int /*<<< orphan*/  new_name; int /*<<< orphan*/  mode; } ;
struct TYPE_33__ {TYPE_7__* data; struct TYPE_33__* next; } ;
struct TYPE_32__ {char* repo_id; int repo_version; char* worktree; char* passwd; int /*<<< orphan*/  total_download; int /*<<< orphan*/ * repo_name; scalar_t__ is_clone; } ;
struct TYPE_31__ {char const* commit_id; } ;
struct TYPE_30__ {int /*<<< orphan*/  root_id; int /*<<< orphan*/  enc_version; int /*<<< orphan*/  salt; int /*<<< orphan*/  random_key; scalar_t__ encrypted; } ;
struct TYPE_29__ {char* worktree; unsigned char* enc_key; unsigned char* enc_iv; int /*<<< orphan*/  enc_version; } ;
struct TYPE_27__ {int /*<<< orphan*/  filelock_mgr; TYPE_9__* repo_mgr; int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  branch_mgr; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ SeafCommit ;
typedef  TYPE_4__ SeafBranch ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  scalar_t__ IgnoreReason ;
typedef  TYPE_5__ HttpTxTask ;
typedef  TYPE_6__ GList ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  int /*<<< orphan*/  GDestroyNotify ;
typedef  TYPE_7__ DiffEntry ;

/* Variables and functions */
 scalar_t__ DIFF_STATUS_ADDED ; 
 scalar_t__ DIFF_STATUS_DELETED ; 
 scalar_t__ DIFF_STATUS_DIR_DELETED ; 
 scalar_t__ DIFF_STATUS_DIR_RENAMED ; 
 scalar_t__ DIFF_STATUS_MODIFIED ; 
 scalar_t__ DIFF_STATUS_RENAMED ; 
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 int /*<<< orphan*/  FALSE ; 
 int FETCH_CHECKOUT_FAILED ; 
 int FETCH_CHECKOUT_LOCKED ; 
 int FETCH_CHECKOUT_SUCCESS ; 
 scalar_t__ IGNORE_REASON_END_SPACE_PERIOD ; 
 scalar_t__ IGNORE_REASON_INVALID_CHARACTER ; 
 int /*<<< orphan*/  LOCKED_OP_DELETE ; 
 int SEAF_PATH_MAX ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_FILE_LOCKED_BY_APP ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_FOLDER_LOCKED_BY_APP ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_PATH_END_SPACE_PERIOD ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_PATH_INVALID_CHARACTER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,TYPE_7__*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,struct index_state*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**,int /*<<< orphan*/ ) ; 
 scalar_t__ diff_entry_free ; 
 int /*<<< orphan*/  FUNC4 (struct index_state*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,int,char*,struct index_state*,char*,int /*<<< orphan*/ *,TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 struct cache_entry* FUNC14 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct index_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (struct index_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_18__* seaf ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 TYPE_3__* FUNC25 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_6__*) ; 
 TYPE_6__* FUNC32 (char*) ; 
 int /*<<< orphan*/ * FUNC33 (TYPE_9__*,char*) ; 
 TYPE_2__* FUNC34 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,...) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC38 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC40 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (char*,struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct index_state*,char*) ; 
 int /*<<< orphan*/ * update_sync_status ; 

int
FUNC45 (HttpTxTask *http_task, const char *remote_head_id)
{
    char *repo_id;
    int repo_version;
    gboolean is_clone;
    char *worktree;
    char *passwd;

    SeafRepo *repo = NULL;
    SeafBranch *master = NULL;
    SeafCommit *remote_head = NULL, *master_head = NULL;
    char index_path[SEAF_PATH_MAX];
    struct index_state istate;
    int ret = FETCH_CHECKOUT_SUCCESS;
    GList *results = NULL;
    SeafileCrypt *crypt = NULL;
    GHashTable *conflict_hash = NULL, *no_conflict_hash = NULL;
    GList *ignore_list = NULL;
    LockedFileSet *fset = NULL;

    repo_id = http_task->repo_id;
    repo_version = http_task->repo_version;
    is_clone = http_task->is_clone;
    worktree = http_task->worktree;
    passwd = http_task->passwd;

    FUNC19 (&istate, 0, sizeof(istate));
    FUNC40 (index_path, SEAF_PATH_MAX, "%s/%s",
              seaf->repo_mgr->index_dir, repo_id);
    if (FUNC20 (&istate, index_path, repo_version) < 0) {
        FUNC35 ("Failed to load index.\n");
        return FETCH_CHECKOUT_FAILED;
    }

    if (!is_clone) {
        repo = FUNC34 (seaf->repo_mgr, repo_id);
        if (!repo) {
            FUNC35 ("Failed to get repo %.8s.\n", repo_id);
            goto out;
        }

        master = FUNC23 (seaf->branch_mgr,
                                                 repo_id, "master");
        if (!master) {
            FUNC35 ("Failed to get master branch for repo %.8s.\n",
                          repo_id);
            ret = FETCH_CHECKOUT_FAILED;
            goto out;
        }

        master_head = FUNC25 (seaf->commit_mgr,
                                                      repo_id,
                                                      repo_version,
                                                      master->commit_id);
        if (!master_head) {
            FUNC35 ("Failed to get master head %s of repo %.8s.\n",
                          repo_id, master->commit_id);
            ret = FETCH_CHECKOUT_FAILED;
            goto out;
        }
    }

    if (!is_clone)
        worktree = repo->worktree;

    remote_head = FUNC25 (seaf->commit_mgr,
                                                  repo_id,
                                                  repo_version,
                                                  remote_head_id);
    if (!remote_head) {
        FUNC35 ("Failed to get remote head %s of repo %.8s.\n",
                      repo_id, remote_head_id);
        ret = FETCH_CHECKOUT_FAILED;
        goto out;
    }

    if (FUNC3 (repo_id, repo_version,
                           master_head ? master_head->root_id : EMPTY_SHA1,
                           remote_head->root_id,
                           &results, TRUE) < 0) {
        FUNC35 ("Failed to diff for repo %.8s.\n", repo_id);
        ret = FETCH_CHECKOUT_FAILED;
        goto out;
    }

    GList *ptr;
    DiffEntry *de;

    /* Expand DIR_ADDED diff entries. */
    if (FUNC9 (repo_id, repo_version,
                             remote_head->root_id,
                             master_head ? master_head->root_id : EMPTY_SHA1,
                             &results) < 0) {
        ret = FETCH_CHECKOUT_FAILED;
        goto out;
    }

#ifdef WIN32
    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_DIR_RENAMED ||
            de->status == DIFF_STATUS_DIR_DELETED) {
            if (do_check_dir_locked (de->name, worktree)) {
                seaf_message ("File(s) in dir %s are locked by other program, "
                              "skip rename/delete.\n", de->name);
                send_file_sync_error_notification (repo_id, NULL, de->name,
                                                   SYNC_ERROR_ID_FOLDER_LOCKED_BY_APP);
                ret = FETCH_CHECKOUT_LOCKED;
                goto out;
            }
        } else if (de->status == DIFF_STATUS_RENAMED) {
            gboolean locked_on_server = seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                                              repo_id,
                                                                              de->name);

            if (do_check_file_locked (de->name, worktree, locked_on_server)) {
                seaf_message ("File %s is locked by other program, skip rename.\n",
                              de->name);
                send_file_sync_error_notification (repo_id, NULL, de->name,
                                                   SYNC_ERROR_ID_FILE_LOCKED_BY_APP);
                ret = FETCH_CHECKOUT_LOCKED;
                goto out;
            }
        }
    }
#endif

    if (remote_head->encrypted) {
        if (!is_clone) {
            crypt = FUNC36 (repo->enc_version,
                                       repo->enc_key,
                                       repo->enc_iv);
        } else {
            unsigned char enc_key[32], enc_iv[16];
            FUNC37 (remote_head->enc_version,
                                          passwd,
                                          remote_head->random_key,
                                          remote_head->salt,
                                          enc_key, enc_iv);
            crypt = FUNC36 (remote_head->enc_version,
                                       enc_key, enc_iv);
        }
    }

    conflict_hash = FUNC12 (g_str_hash, g_str_equal,
                                           g_free, g_free);
    no_conflict_hash = FUNC12 (g_str_hash, g_str_equal,
                                              g_free, NULL);

    ignore_list = FUNC32 (worktree);

    struct cache_entry *ce;

#if defined WIN32 || defined __APPLE__
    fset = seaf_repo_manager_get_locked_file_set (seaf->repo_mgr, repo_id);
#endif

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_DELETED) {
            FUNC27 ("Delete file %s.\n", de->name);

            if (FUNC39 (de->name, NULL)) {
                FUNC30 ("Path %s is invalid on Windows, skip delete.\n",
                              de->name);
                continue;
            }

            ce = FUNC14 (&istate, de->name, FUNC42(de->name), 0);
            if (!ce)
                continue;

            gboolean locked_on_server = FUNC28 (seaf->filelock_mgr,
                                                                              repo_id,
                                                                              de->name);
            if (locked_on_server)
                FUNC29 (seaf->filelock_mgr,
                                                      repo_id, de->name);

#if defined WIN32 || defined __APPLE__
            if (!do_check_file_locked (de->name, worktree, locked_on_server)) {
                locked_file_set_remove (fset, de->name, FALSE);
                delete_path (worktree, de->name, de->mode, ce->ce_mtime.sec);
            } else {
                if (!locked_file_set_lookup (fset, de->name))
                    send_file_sync_error_notification (repo_id, http_task->repo_name, de->name,
                                                       SYNC_ERROR_ID_FILE_LOCKED_BY_APP);

                locked_file_set_add_update (fset, de->name, LOCKED_OP_DELETE,
                                            ce->ce_mtime.sec, NULL);
            }
#else
            FUNC1 (worktree, de->name, de->mode, ce->ce_mtime.sec);
#endif

            /* No need to lock wt file again since it's deleted. */

            FUNC21 (&istate, de->name, NULL);
            FUNC43 (worktree, &istate, de->name);
        } else if (de->status == DIFF_STATUS_DIR_DELETED) {
            FUNC27 ("Delete dir %s.\n", de->name);

            if (FUNC39 (de->name, NULL)) {
                FUNC30 ("Path %s is invalid on Windows, skip delete.\n",
                              de->name);
                continue;
            }

            /* Nothing to delete. */
            if (!master_head || FUNC41(master_head->root_id, EMPTY_SHA1) == 0)
                continue;

            FUNC2 (repo_id, http_task->repo_name, &istate, worktree, de->name);

            /* Remove all index entries under this directory */
            FUNC21 (&istate, de->name, NULL);

            FUNC43 (worktree, &istate, de->name);
        }
    }

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_RENAMED ||
            de->status == DIFF_STATUS_DIR_RENAMED) {
            FUNC27 ("Rename %s to %s.\n", de->name, de->new_name);

#ifdef WIN32
            IgnoreReason reason;
            if (should_ignore_on_checkout (de->new_name, &reason)) {
                seaf_message ("Path %s is invalid on Windows, skip rename.\n", de->new_name);

                if (reason == IGNORE_REASON_END_SPACE_PERIOD)
                    send_file_sync_error_notification (repo_id, http_task->repo_name,
                                                       de->new_name,
                                                       SYNC_ERROR_ID_PATH_END_SPACE_PERIOD);
                else if (reason == IGNORE_REASON_INVALID_CHARACTER)
                    send_file_sync_error_notification (repo_id, http_task->repo_name,
                                                       de->new_name,
                                                       SYNC_ERROR_ID_PATH_INVALID_CHARACTER);
                continue;
            } else if (should_ignore_on_checkout (de->name, NULL)) {
                /* If the server renames an invalid path to a valid path,
                 * directly checkout the valid path. The checkout will merge
                 * with any existing files.
                 */
                convert_rename_to_checkout (repo_id, repo_version,
                                            remote_head->root_id,
                                            de, &results);
                continue;
            }
#endif

            if (FUNC28 (seaf->filelock_mgr,
                                                      repo_id, de->name))
                FUNC29 (seaf->filelock_mgr,
                                                      repo_id, de->name);

            FUNC7 (de, worktree, conflict_hash, no_conflict_hash);

            /* update_sync_status updates the sync status for each renamed path.
             * The renamed file/folder becomes "synced" immediately after rename.
             */
            if (!is_clone)
                FUNC22 (&istate, de->name, de->new_name, NULL,
                                      update_sync_status, repo_id);
            else
                FUNC22 (&istate, de->name, de->new_name, NULL,
                                      NULL, NULL);

            /* Moving files out of a dir may make it empty. */
            FUNC43 (worktree, &istate, de->name);
        }
    }

    if (istate.cache_changed)
        FUNC44 (&istate, index_path);

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_ADDED || de->status == DIFF_STATUS_MODIFIED) {
            http_task->total_download += de->size;
        }
    }

    ret = FUNC8 (repo_id,
                               repo_version,
                               worktree,
                               &istate,
                               index_path,
                               crypt,
                               http_task,
                               results,
                               conflict_hash,
                               no_conflict_hash,
                               remote_head_id,
                               fset);

out:
    FUNC4 (&istate);

    FUNC24 (master);
    FUNC26 (master_head);
    FUNC26 (remote_head);

    FUNC13 (results, (GDestroyNotify)diff_entry_free);

    FUNC10 (crypt);
    if (conflict_hash)
        FUNC11 (conflict_hash);
    if (no_conflict_hash)
        FUNC11 (no_conflict_hash);

    if (ignore_list)
        FUNC31 (ignore_list);

#if defined WIN32 || defined __APPLE__
    locked_file_set_free (fset);
#endif

    return ret;
}