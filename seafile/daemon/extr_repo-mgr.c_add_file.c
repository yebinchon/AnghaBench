
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct cache_entry {int sha1; } ;
typedef scalar_t__ gint64 ;
typedef scalar_t__ gboolean ;
struct TYPE_14__ {int sync_mgr; int filelock_mgr; } ;
struct TYPE_13__ {scalar_t__ changeset; scalar_t__ fset; scalar_t__ startup_scan; int is_repo_ro; } ;
struct TYPE_12__ {scalar_t__ old_mtime; int operation; } ;
struct TYPE_11__ {scalar_t__ st_mtime; scalar_t__ st_size; } ;
typedef scalar_t__ SyncStatus ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ LockedFile ;
typedef int GQueue ;
typedef TYPE_3__ AddOptions ;


 int DIFF_STATUS_ADDED ;
 scalar_t__ FALSE ;
 int LOCKED_OP_DELETE ;
 int LOCKED_OP_UPDATE ;
 scalar_t__ MAX_COMMIT_SIZE ;
 int SYNC_ERROR_ID_INDEX_ERROR ;
 int SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO ;
 scalar_t__ SYNC_STATUS_ERROR ;
 scalar_t__ SYNC_STATUS_SYNCED ;
 scalar_t__ SYNC_STATUS_SYNCING ;
 int S_IFREG ;
 scalar_t__ TRUE ;
 int add_to_changeset (scalar_t__,int ,int ,TYPE_1__*,char const*,char const*,int *) ;
 int add_to_index (char const*,int,struct index_state*,char const*,char const*,TYPE_1__*,int ,int *,int ,char const*,scalar_t__*) ;
 int * g_queue_new () ;
 int g_queue_push_tail (int *,int ) ;
 int g_strdup (char const*) ;
 scalar_t__ ie_match_stat (struct cache_entry*,TYPE_1__*,int ) ;
 int index_cb ;
 struct cache_entry* index_name_exists (struct index_state*,char const*,int ,int ) ;
 scalar_t__ is_path_writable (char const*,int ,char const*) ;
 TYPE_2__* locked_file_set_lookup (scalar_t__,char const*) ;
 int locked_file_set_remove (scalar_t__,char const*,scalar_t__) ;
 TYPE_4__* seaf ;
 scalar_t__ seaf_filelock_manager_is_file_locked (int ,char const*,char const*) ;
 int seaf_sync_manager_update_active_path (int ,char const*,char const*,int ,scalar_t__) ;
 int send_file_sync_error_notification (char const*,int *,char const*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
add_file (const char *repo_id,
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
        is_writable = is_path_writable(repo_id,
                                       options->is_repo_ro, path);

    is_locked = seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                      repo_id, path);
    if (is_locked && options && !(options->startup_scan)) {


    }

    if (options && options->startup_scan) {
        SyncStatus status;

        ce = index_name_exists (istate, path, strlen(path), 0);
        if (!ce || ie_match_stat(ce, st, 0) != 0)
            status = SYNC_STATUS_SYNCING;
        else
            status = SYNC_STATUS_SYNCED;


        if (status == SYNC_STATUS_SYNCED || (is_writable && !is_locked))
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo_id,
                                                  path,
                                                  S_IFREG,
                                                  status);

        if (status == SYNC_STATUS_SYNCING && !is_writable)
            send_file_sync_error_notification (repo_id, ((void*)0), path,
                                               SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO);
    }

    if (!is_writable || is_locked)
        return ret;
    if (!remain_files) {
        ret = add_to_index (repo_id, version, istate, path, full_path,
                            st, 0, crypt, index_cb, modifier, &added);
        if (!added) {



            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo_id,
                                                  path,
                                                  S_IFREG,
                                                  SYNC_STATUS_SYNCED);
        } else {
            if (total_size)
                *total_size += (gint64)(st->st_size);
            if (options && options->changeset) {

                ce = index_name_exists (istate, path, strlen(path), 0);
                add_to_changeset (options->changeset,
                                  DIFF_STATUS_ADDED,
                                  ce->sha1,
                                  st,
                                  modifier,
                                  path,
                                  ((void*)0));
            }
        }
    } else if (*remain_files == ((void*)0)) {
        ret = add_to_index (repo_id, version, istate, path, full_path,
                            st, 0, crypt, index_cb, modifier, &added);
        if (added) {
            *total_size += (gint64)(st->st_size);
            if (*total_size >= MAX_COMMIT_SIZE)
                *remain_files = g_queue_new ();
        } else {
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo_id,
                                                  path,
                                                  S_IFREG,
                                                  SYNC_STATUS_SYNCED);
        }
        if (added && options && options->changeset) {

            ce = index_name_exists (istate, path, strlen(path), 0);
            add_to_changeset (options->changeset,
                              DIFF_STATUS_ADDED,
                              ce->sha1,
                              st,
                              modifier,
                              path,
                              ((void*)0));
        }
    } else {
        *total_size += (gint64)(st->st_size);
        g_queue_push_tail (*remain_files, g_strdup(path));
    }

    if (ret < 0) {
        seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                              repo_id,
                                              path,
                                              S_IFREG,
                                              SYNC_STATUS_ERROR);
        send_file_sync_error_notification (repo_id, ((void*)0), path,
                                           SYNC_ERROR_ID_INDEX_ERROR);
    }

    return ret;
}
