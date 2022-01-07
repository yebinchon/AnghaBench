
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_18__ ;


struct index_state {scalar_t__ cache_changed; } ;
struct TYPE_28__ {int sec; } ;
struct cache_entry {TYPE_1__ ce_mtime; } ;
typedef int istate ;
typedef scalar_t__ gboolean ;
struct TYPE_35__ {char* index_dir; } ;
struct TYPE_34__ {scalar_t__ status; scalar_t__ size; int name; int new_name; int mode; } ;
struct TYPE_33__ {TYPE_7__* data; struct TYPE_33__* next; } ;
struct TYPE_32__ {char* repo_id; int repo_version; char* worktree; char* passwd; int total_download; int * repo_name; scalar_t__ is_clone; } ;
struct TYPE_31__ {char const* commit_id; } ;
struct TYPE_30__ {int root_id; int enc_version; int salt; int random_key; scalar_t__ encrypted; } ;
struct TYPE_29__ {char* worktree; unsigned char* enc_key; unsigned char* enc_iv; int enc_version; } ;
struct TYPE_27__ {int filelock_mgr; TYPE_9__* repo_mgr; int commit_mgr; int branch_mgr; } ;
typedef int SeafileCrypt ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ SeafCommit ;
typedef TYPE_4__ SeafBranch ;
typedef int LockedFileSet ;
typedef scalar_t__ IgnoreReason ;
typedef TYPE_5__ HttpTxTask ;
typedef TYPE_6__ GList ;
typedef int GHashTable ;
typedef int GDestroyNotify ;
typedef TYPE_7__ DiffEntry ;


 scalar_t__ DIFF_STATUS_ADDED ;
 scalar_t__ DIFF_STATUS_DELETED ;
 scalar_t__ DIFF_STATUS_DIR_DELETED ;
 scalar_t__ DIFF_STATUS_DIR_RENAMED ;
 scalar_t__ DIFF_STATUS_MODIFIED ;
 scalar_t__ DIFF_STATUS_RENAMED ;
 int EMPTY_SHA1 ;
 int FALSE ;
 int FETCH_CHECKOUT_FAILED ;
 int FETCH_CHECKOUT_LOCKED ;
 int FETCH_CHECKOUT_SUCCESS ;
 scalar_t__ IGNORE_REASON_END_SPACE_PERIOD ;
 scalar_t__ IGNORE_REASON_INVALID_CHARACTER ;
 int LOCKED_OP_DELETE ;
 int SEAF_PATH_MAX ;
 int SYNC_ERROR_ID_FILE_LOCKED_BY_APP ;
 int SYNC_ERROR_ID_FOLDER_LOCKED_BY_APP ;
 int SYNC_ERROR_ID_PATH_END_SPACE_PERIOD ;
 int SYNC_ERROR_ID_PATH_INVALID_CHARACTER ;
 int TRUE ;
 int convert_rename_to_checkout (char*,int,int ,TYPE_7__*,TYPE_6__**) ;
 int delete_path (char*,int ,int ,int ) ;
 int delete_worktree_dir (char*,int *,struct index_state*,char*,int ) ;
 scalar_t__ diff_commit_roots (char*,int,int ,int ,TYPE_6__**,int ) ;
 scalar_t__ diff_entry_free ;
 int discard_index (struct index_state*) ;
 scalar_t__ do_check_dir_locked (int ,char*) ;
 scalar_t__ do_check_file_locked (int ,char*,scalar_t__) ;
 int do_rename_in_worktree (TYPE_7__*,char*,int *,int *) ;
 int download_files_http (char*,int,char*,struct index_state*,char*,int *,TYPE_5__*,TYPE_6__*,int *,int *,char const*,int *) ;
 scalar_t__ expand_diff_results (char*,int,int ,int ,TYPE_6__**) ;
 int g_free (int *) ;
 int g_hash_table_destroy (int *) ;
 int * g_hash_table_new_full (int ,int ,int (*) (int *),...) ;
 int g_list_free_full (TYPE_6__*,int ) ;
 int g_str_equal ;
 int g_str_hash ;
 struct cache_entry* index_name_exists (struct index_state*,int ,int ,int ) ;
 int locked_file_set_add_update (int *,int ,int ,int ,int *) ;
 int locked_file_set_free (int *) ;
 int locked_file_set_lookup (int *,int ) ;
 int locked_file_set_remove (int *,int ,int ) ;
 int memset (struct index_state*,int ,int) ;
 scalar_t__ read_index_from (struct index_state*,char*,int) ;
 int remove_from_index_with_prefix (struct index_state*,int ,int *) ;
 int rename_index_entries (struct index_state*,int ,int ,int *,int *,char*) ;
 TYPE_18__* seaf ;
 TYPE_4__* seaf_branch_manager_get_branch (int ,char*,char*) ;
 int seaf_branch_unref (TYPE_4__*) ;
 TYPE_3__* seaf_commit_manager_get_commit (int ,char*,int,char const*) ;
 int seaf_commit_unref (TYPE_3__*) ;
 int seaf_debug (char*,int ,...) ;
 scalar_t__ seaf_filelock_manager_is_file_locked (int ,char*,int ) ;
 int seaf_filelock_manager_unlock_wt_file (int ,char*,int ) ;
 int seaf_message (char*,int ) ;
 int seaf_repo_free_ignore_files (TYPE_6__*) ;
 TYPE_6__* seaf_repo_load_ignore_files (char*) ;
 int * seaf_repo_manager_get_locked_file_set (TYPE_9__*,char*) ;
 TYPE_2__* seaf_repo_manager_get_repo (TYPE_9__*,char*) ;
 int seaf_warning (char*,...) ;
 int * seafile_crypt_new (int ,unsigned char*,unsigned char*) ;
 int seafile_decrypt_repo_enc_key (int ,char*,int ,int ,unsigned char*,unsigned char*) ;
 int send_file_sync_error_notification (char*,int *,int ,int ) ;
 scalar_t__ should_ignore_on_checkout (int ,scalar_t__*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (int ) ;
 int try_add_empty_parent_dir_entry (char*,struct index_state*,int ) ;
 int update_index (struct index_state*,char*) ;
 int * update_sync_status ;

int
seaf_repo_fetch_and_checkout (HttpTxTask *http_task, const char *remote_head_id)
{
    char *repo_id;
    int repo_version;
    gboolean is_clone;
    char *worktree;
    char *passwd;

    SeafRepo *repo = ((void*)0);
    SeafBranch *master = ((void*)0);
    SeafCommit *remote_head = ((void*)0), *master_head = ((void*)0);
    char index_path[SEAF_PATH_MAX];
    struct index_state istate;
    int ret = FETCH_CHECKOUT_SUCCESS;
    GList *results = ((void*)0);
    SeafileCrypt *crypt = ((void*)0);
    GHashTable *conflict_hash = ((void*)0), *no_conflict_hash = ((void*)0);
    GList *ignore_list = ((void*)0);
    LockedFileSet *fset = ((void*)0);

    repo_id = http_task->repo_id;
    repo_version = http_task->repo_version;
    is_clone = http_task->is_clone;
    worktree = http_task->worktree;
    passwd = http_task->passwd;

    memset (&istate, 0, sizeof(istate));
    snprintf (index_path, SEAF_PATH_MAX, "%s/%s",
              seaf->repo_mgr->index_dir, repo_id);
    if (read_index_from (&istate, index_path, repo_version) < 0) {
        seaf_warning ("Failed to load index.\n");
        return FETCH_CHECKOUT_FAILED;
    }

    if (!is_clone) {
        repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
        if (!repo) {
            seaf_warning ("Failed to get repo %.8s.\n", repo_id);
            goto out;
        }

        master = seaf_branch_manager_get_branch (seaf->branch_mgr,
                                                 repo_id, "master");
        if (!master) {
            seaf_warning ("Failed to get master branch for repo %.8s.\n",
                          repo_id);
            ret = FETCH_CHECKOUT_FAILED;
            goto out;
        }

        master_head = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                                      repo_id,
                                                      repo_version,
                                                      master->commit_id);
        if (!master_head) {
            seaf_warning ("Failed to get master head %s of repo %.8s.\n",
                          repo_id, master->commit_id);
            ret = FETCH_CHECKOUT_FAILED;
            goto out;
        }
    }

    if (!is_clone)
        worktree = repo->worktree;

    remote_head = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                                  repo_id,
                                                  repo_version,
                                                  remote_head_id);
    if (!remote_head) {
        seaf_warning ("Failed to get remote head %s of repo %.8s.\n",
                      repo_id, remote_head_id);
        ret = FETCH_CHECKOUT_FAILED;
        goto out;
    }

    if (diff_commit_roots (repo_id, repo_version,
                           master_head ? master_head->root_id : EMPTY_SHA1,
                           remote_head->root_id,
                           &results, TRUE) < 0) {
        seaf_warning ("Failed to diff for repo %.8s.\n", repo_id);
        ret = FETCH_CHECKOUT_FAILED;
        goto out;
    }

    GList *ptr;
    DiffEntry *de;


    if (expand_diff_results (repo_id, repo_version,
                             remote_head->root_id,
                             master_head ? master_head->root_id : EMPTY_SHA1,
                             &results) < 0) {
        ret = FETCH_CHECKOUT_FAILED;
        goto out;
    }
    if (remote_head->encrypted) {
        if (!is_clone) {
            crypt = seafile_crypt_new (repo->enc_version,
                                       repo->enc_key,
                                       repo->enc_iv);
        } else {
            unsigned char enc_key[32], enc_iv[16];
            seafile_decrypt_repo_enc_key (remote_head->enc_version,
                                          passwd,
                                          remote_head->random_key,
                                          remote_head->salt,
                                          enc_key, enc_iv);
            crypt = seafile_crypt_new (remote_head->enc_version,
                                       enc_key, enc_iv);
        }
    }

    conflict_hash = g_hash_table_new_full (g_str_hash, g_str_equal,
                                           g_free, g_free);
    no_conflict_hash = g_hash_table_new_full (g_str_hash, g_str_equal,
                                              g_free, ((void*)0));

    ignore_list = seaf_repo_load_ignore_files (worktree);

    struct cache_entry *ce;





    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_DELETED) {
            seaf_debug ("Delete file %s.\n", de->name);

            if (should_ignore_on_checkout (de->name, ((void*)0))) {
                seaf_message ("Path %s is invalid on Windows, skip delete.\n",
                              de->name);
                continue;
            }

            ce = index_name_exists (&istate, de->name, strlen(de->name), 0);
            if (!ce)
                continue;

            gboolean locked_on_server = seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                                              repo_id,
                                                                              de->name);
            if (locked_on_server)
                seaf_filelock_manager_unlock_wt_file (seaf->filelock_mgr,
                                                      repo_id, de->name);
            delete_path (worktree, de->name, de->mode, ce->ce_mtime.sec);




            remove_from_index_with_prefix (&istate, de->name, ((void*)0));
            try_add_empty_parent_dir_entry (worktree, &istate, de->name);
        } else if (de->status == DIFF_STATUS_DIR_DELETED) {
            seaf_debug ("Delete dir %s.\n", de->name);

            if (should_ignore_on_checkout (de->name, ((void*)0))) {
                seaf_message ("Path %s is invalid on Windows, skip delete.\n",
                              de->name);
                continue;
            }


            if (!master_head || strcmp(master_head->root_id, EMPTY_SHA1) == 0)
                continue;

            delete_worktree_dir (repo_id, http_task->repo_name, &istate, worktree, de->name);


            remove_from_index_with_prefix (&istate, de->name, ((void*)0));

            try_add_empty_parent_dir_entry (worktree, &istate, de->name);
        }
    }

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_RENAMED ||
            de->status == DIFF_STATUS_DIR_RENAMED) {
            seaf_debug ("Rename %s to %s.\n", de->name, de->new_name);
            if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                      repo_id, de->name))
                seaf_filelock_manager_unlock_wt_file (seaf->filelock_mgr,
                                                      repo_id, de->name);

            do_rename_in_worktree (de, worktree, conflict_hash, no_conflict_hash);




            if (!is_clone)
                rename_index_entries (&istate, de->name, de->new_name, ((void*)0),
                                      update_sync_status, repo_id);
            else
                rename_index_entries (&istate, de->name, de->new_name, ((void*)0),
                                      ((void*)0), ((void*)0));


            try_add_empty_parent_dir_entry (worktree, &istate, de->name);
        }
    }

    if (istate.cache_changed)
        update_index (&istate, index_path);

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;
        if (de->status == DIFF_STATUS_ADDED || de->status == DIFF_STATUS_MODIFIED) {
            http_task->total_download += de->size;
        }
    }

    ret = download_files_http (repo_id,
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
    discard_index (&istate);

    seaf_branch_unref (master);
    seaf_commit_unref (master_head);
    seaf_commit_unref (remote_head);

    g_list_free_full (results, (GDestroyNotify)diff_entry_free);

    g_free (crypt);
    if (conflict_hash)
        g_hash_table_destroy (conflict_hash);
    if (no_conflict_hash)
        g_hash_table_destroy (no_conflict_hash);

    if (ignore_list)
        seaf_repo_free_ignore_files (ignore_list);





    return ret;
}
