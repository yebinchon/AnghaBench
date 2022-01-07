
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ sec; } ;
struct cache_entry {int ce_flags; TYPE_1__ ce_mtime; } ;
typedef int gboolean ;
struct TYPE_19__ {int filelock_mgr; int fs_mgr; } ;
struct TYPE_18__ {char* name; int mtime; int mode; int sha1; } ;
struct TYPE_17__ {char* repo_id; int repo_version; TYPE_3__* http_task; int * crypt; } ;
struct TYPE_16__ {int no_checkout; int force_conflict; int path; int new_ce; TYPE_6__* de; struct cache_entry* ce; } ;
struct TYPE_15__ {int is_clone; int email; } ;
struct TYPE_14__ {scalar_t__ st_mtime; int st_mode; } ;
typedef int SeafileCrypt ;
typedef TYPE_2__ SeafStat ;
typedef int LockedFileSet ;
typedef TYPE_3__ HttpTxTask ;
typedef int GHashTable ;
typedef TYPE_4__ FileTxTask ;
typedef TYPE_5__ FileTxData ;
typedef TYPE_6__ DiffEntry ;


 int CE_REMOVE ;
 int FALSE ;
 int FETCH_CHECKOUT_FAILED ;
 int FETCH_CHECKOUT_SUCCESS ;
 int LOCKED_OP_UPDATE ;
 int SYNC_ERROR_ID_CONFLICT ;
 int SYNC_ERROR_ID_FILE_LOCKED_BY_APP ;
 scalar_t__ S_ISREG (int ) ;
 int TRUE ;
 scalar_t__ check_path_conflict (char*,char**) ;
 int cleanup_file_blocks_http (TYPE_3__*,char*) ;
 scalar_t__ do_check_file_locked (char*,char const*,int) ;
 int fill_stat_cache_info (struct cache_entry*,TYPE_2__*) ;
 int g_free (char*) ;
 int locked_file_set_add_update (int *,char*,int ,scalar_t__,char*) ;
 int locked_file_set_lookup (int *,char*) ;
 int rawdata_to_hex (int ,char*,int) ;
 TYPE_8__* seaf ;
 int seaf_filelock_manager_is_file_locked (int ,char*,char*) ;
 int seaf_filelock_manager_lock_wt_file (int ,char*,char*) ;
 int seaf_filelock_manager_unlock_wt_file (int ,char*,char*) ;
 scalar_t__ seaf_fs_manager_checkout_file (int ,char*,int,char*,int ,int ,int ,int *,char*,char const*,int,int*,int ) ;
 int seaf_message (char*,int ) ;
 scalar_t__ seaf_stat (int ,TYPE_2__*) ;
 int seaf_warning (char*,int ) ;
 int send_file_sync_error_notification (char*,int *,char*,int ) ;
 scalar_t__ should_ignore_on_checkout (char*,int *) ;

__attribute__((used)) static int
checkout_file_http (FileTxData *data,
                    FileTxTask *file_task,
                    const char *worktree,
                    GHashTable *conflict_hash,
                    GHashTable *no_conflict_hash,
                    const char *conflict_head_id,
                    LockedFileSet *fset)
{
    char *repo_id = data->repo_id;
    int repo_version = data->repo_version;
    struct cache_entry *ce = file_task->ce;
    DiffEntry *de = file_task->de;
    SeafileCrypt *crypt = data->crypt;
    gboolean no_checkout = file_task->no_checkout;
    gboolean force_conflict = file_task->force_conflict;
    HttpTxTask *http_task = data->http_task;
    gboolean path_exists;
    gboolean case_conflict = FALSE;
    SeafStat st;
    char file_id[41];
    gboolean locked_on_server = FALSE;

    if (no_checkout)
        return FETCH_CHECKOUT_SUCCESS;

    if (should_ignore_on_checkout (de->name, ((void*)0)))
        return FETCH_CHECKOUT_SUCCESS;

    rawdata_to_hex (de->sha1, file_id, 20);

    locked_on_server = seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                             repo_id, de->name);
    path_exists = (seaf_stat (file_task->path, &st) == 0);


    if (!file_task->new_ce &&
        path_exists && S_ISREG(st.st_mode) &&
        !force_conflict) {
        if (st.st_mtime != ce->ce_mtime.sec) {
            seaf_message ("File %s is updated by user. "
                          "Will checkout to conflict file later.\n", file_task->path);
            force_conflict = TRUE;
        }
    }




    if (locked_on_server)
        seaf_filelock_manager_unlock_wt_file (seaf->filelock_mgr,
                                              repo_id, de->name);


    gboolean conflicted = FALSE;
    if (seaf_fs_manager_checkout_file (seaf->fs_mgr,
                                       repo_id,
                                       repo_version,
                                       file_id,
                                       file_task->path,
                                       de->mode,
                                       de->mtime,
                                       crypt,
                                       de->name,
                                       conflict_head_id,
                                       force_conflict,
                                       &conflicted,
                                       http_task->email) < 0) {
        seaf_warning ("Failed to checkout file %s.\n", file_task->path);

        if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                  repo_id, de->name))
            seaf_filelock_manager_lock_wt_file (seaf->filelock_mgr,
                                                repo_id, de->name);

        return FETCH_CHECKOUT_FAILED;
    }

    if (locked_on_server)
        seaf_filelock_manager_lock_wt_file (seaf->filelock_mgr,
                                            repo_id, de->name);

    cleanup_file_blocks_http (http_task, file_id);

    if (conflicted) {
        send_file_sync_error_notification (repo_id, ((void*)0), de->name, SYNC_ERROR_ID_CONFLICT);
    } else if (!http_task->is_clone) {
        char *orig_path = ((void*)0);
        if (check_path_conflict (de->name, &orig_path))
            send_file_sync_error_notification (repo_id, ((void*)0), orig_path, SYNC_ERROR_ID_CONFLICT);
        g_free (orig_path);
    }





    if (case_conflict)
        ce->ce_flags |= CE_REMOVE;





    seaf_stat (file_task->path, &st);
    fill_stat_cache_info (ce, &st);

    return FETCH_CHECKOUT_SUCCESS;
}
