
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct cache_entry {unsigned char* sha1; } ;
typedef scalar_t__ gint64 ;
typedef scalar_t__ gboolean ;
struct TYPE_11__ {int sync_mgr; } ;
struct TYPE_10__ {int changeset; int id; int * email; int version; int worktree; } ;
struct TYPE_9__ {int st_mode; scalar_t__ st_size; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ SeafRepo ;
typedef int GQueue ;
typedef int GList ;


 int DIFF_STATUS_ADDED ;
 int DIFF_STATUS_DIR_ADDED ;
 scalar_t__ FALSE ;
 scalar_t__ MAX_COMMIT_SIZE ;
 int SYNC_ERROR_ID_INDEX_ERROR ;
 int SYNC_STATUS_ERROR ;
 int SYNC_STATUS_SYNCED ;
 int S_IFREG ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int add_empty_dir_to_index (struct index_state*,char*,TYPE_1__*) ;
 int add_to_changeset (int ,int ,unsigned char*,TYPE_1__*,int *,char*,int *) ;
 int add_to_index (int ,int ,struct index_state*,char*,char*,TYPE_1__*,int ,int *,int ,int *,scalar_t__*) ;
 int errno ;
 char* g_build_filename (int ,char*,int *) ;
 int g_free (char*) ;
 char* g_queue_pop_head (int *) ;
 int index_cb ;
 struct cache_entry* index_name_exists (struct index_state*,char*,int ,int ) ;
 scalar_t__ is_empty_dir (char*,int *) ;
 TYPE_4__* seaf ;
 scalar_t__ seaf_stat (char*,TYPE_1__*) ;
 int seaf_sync_manager_update_active_path (int ,int ,char*,int ,int ) ;
 int seaf_warning (char*,char*,int ) ;
 int send_file_sync_error_notification (int ,int *,char*,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int
add_remain_files (SeafRepo *repo, struct index_state *istate,
                  SeafileCrypt *crypt, GQueue *remain_files,
                  GList *ignore_list, gint64 *total_size)
{
    char *path;
    char *full_path;
    SeafStat st;
    struct cache_entry *ce;

    while ((path = g_queue_pop_head (remain_files)) != ((void*)0)) {
        full_path = g_build_filename (repo->worktree, path, ((void*)0));
        if (seaf_stat (full_path, &st) < 0) {
            seaf_warning ("Failed to stat %s: %s.\n", full_path, strerror(errno));
            g_free (path);
            g_free (full_path);
            continue;
        }

        if (S_ISREG(st.st_mode)) {
            gboolean added = FALSE;
            int ret = 0;
            ret = add_to_index (repo->id, repo->version, istate, path, full_path,
                                &st, 0, crypt, index_cb, repo->email, &added);
            if (added) {
                ce = index_name_exists (istate, path, strlen(path), 0);
                add_to_changeset (repo->changeset,
                                  DIFF_STATUS_ADDED,
                                  ce->sha1,
                                  &st,
                                  repo->email,
                                  path,
                                  ((void*)0));

                *total_size += (gint64)(st.st_size);
                if (*total_size >= MAX_COMMIT_SIZE) {
                    g_free (path);
                    g_free (full_path);
                    break;
                }
            } else {
                seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                      repo->id,
                                                      path,
                                                      S_IFREG,
                                                      SYNC_STATUS_SYNCED);
            }
            if (ret < 0) {
                seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                      repo->id,
                                                      path,
                                                      S_IFREG,
                                                      SYNC_STATUS_ERROR);
                send_file_sync_error_notification (repo->id, ((void*)0), path,
                                                   SYNC_ERROR_ID_INDEX_ERROR);
            }
        } else if (S_ISDIR(st.st_mode)) {
            if (is_empty_dir (full_path, ignore_list)) {
                int rc = add_empty_dir_to_index (istate, path, &st);
                if (rc == 1) {
                    unsigned char allzero[20] = {0};
                    add_to_changeset (repo->changeset,
                                      DIFF_STATUS_DIR_ADDED,
                                      allzero,
                                      &st,
                                      ((void*)0),
                                      path,
                                      ((void*)0));
                }
            }
        }
        g_free (path);
        g_free (full_path);
    }

    return 0;
}
