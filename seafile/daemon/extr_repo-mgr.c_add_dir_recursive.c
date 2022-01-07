
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct cache_entry {int dummy; } ;
typedef scalar_t__ gboolean ;
struct TYPE_8__ {int sync_mgr; } ;
struct TYPE_7__ {scalar_t__ changeset; scalar_t__ startup_scan; int is_repo_ro; } ;
struct TYPE_6__ {int ** remain_files; int istate; int repo_id; TYPE_2__* options; int total_size; int crypt; int modifier; int version; int ignore_list; int worktree; } ;
typedef scalar_t__ SyncStatus ;
typedef struct stat SeafStat ;
typedef int GDir ;
typedef TYPE_1__ AddParams ;
typedef TYPE_2__ AddOptions ;


 int DIFF_STATUS_DIR_ADDED ;
 scalar_t__ FALSE ;
 int G_NORMALIZE_NFC ;
 int PATH_SEPERATOR ;
 scalar_t__ SYNC_STATUS_ERROR ;
 scalar_t__ SYNC_STATUS_IGNORED ;
 scalar_t__ SYNC_STATUS_SYNCED ;
 scalar_t__ SYNC_STATUS_SYNCING ;
 int S_IFDIR ;
 int S_IFREG ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ TRUE ;
 int add_empty_dir_to_index (int ,char const*,struct stat*) ;
 int add_file (int ,int ,int ,int ,char*,char*,struct stat*,int ,int ,int **,TYPE_2__*) ;
 int add_to_changeset (scalar_t__,int ,unsigned char*,struct stat*,int *,char const*,int *) ;
 int errno ;
 char* g_build_filename (int ,char*,int *) ;
 char* g_build_path (int ,char const*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int g_queue_push_tail (int *,int ) ;
 int g_strdup (char const*) ;
 char* g_utf8_normalize (char const*,int,int ) ;
 struct cache_entry* index_name_exists (int ,char const*,int ,int ) ;
 scalar_t__ is_path_writable (int ,int ,char const*) ;
 TYPE_3__* seaf ;
 int seaf_sync_manager_update_active_path (int ,int ,char const*,int ,scalar_t__) ;
 int seaf_warning (char*,char const*,int ) ;
 scalar_t__ should_ignore (char const*,char const*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
add_dir_recursive (const char *path, const char *full_path, SeafStat *st,
                   AddParams *params, gboolean ignored)
{
    AddOptions *options = params->options;
    GDir *dir;
    const char *dname;
    char *subpath, *full_subpath;
    int n, total;
    gboolean is_writable = TRUE;
    struct stat sub_st;

    dir = g_dir_open (full_path, 0, ((void*)0));
    if (!dir) {
        seaf_warning ("Failed to open dir %s: %s.\n", full_path, strerror(errno));

        seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                              params->repo_id,
                                              path,
                                              S_IFDIR,
                                              SYNC_STATUS_ERROR);

        return 0;
    }

    n = 0;
    total = 0;
    while ((dname = g_dir_read_name(dir)) != ((void*)0)) {
        ++total;






        subpath = g_build_path (PATH_SEPERATOR, path, dname, ((void*)0));

        full_subpath = g_build_filename (params->worktree, subpath, ((void*)0));

        if (stat (full_subpath, &sub_st) < 0) {
            seaf_warning ("Failed to stat %s: %s.\n", full_subpath, strerror(errno));
            g_free (subpath);
            g_free (full_subpath);
            continue;
        }

        if (ignored || should_ignore(full_path, dname, params->ignore_list)) {
            if (options && options->startup_scan) {
                if (S_ISDIR(sub_st.st_mode))
                    add_dir_recursive (subpath, full_subpath, &sub_st, params, TRUE);
                else
                    seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                          params->repo_id,
                                                          subpath,
                                                          S_IFREG,
                                                          SYNC_STATUS_IGNORED);
            }
            g_free (subpath);
            g_free (full_subpath);
            continue;
        }

        ++n;

        if (S_ISDIR(sub_st.st_mode))
            add_dir_recursive (subpath, full_subpath, &sub_st, params, FALSE);
        else if (S_ISREG(sub_st.st_mode))
            add_file (params->repo_id,
                      params->version,
                      params->modifier,
                      params->istate,
                      subpath,
                      full_subpath,
                      &sub_st,
                      params->crypt,
                      params->total_size,
                      params->remain_files,
                      params->options);

        g_free (subpath);
        g_free (full_subpath);
    }
    g_dir_close (dir);

    if (ignored) {
        seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                              params->repo_id,
                                              path,
                                              S_IFDIR,
                                              SYNC_STATUS_IGNORED);
        return 0;
    }

    if (options)
        is_writable = is_path_writable(params->repo_id,
                                       options->is_repo_ro, path);


    if (options && options->startup_scan && total == 0) {
        SyncStatus status;
        struct cache_entry *ce = index_name_exists (params->istate, path,
                                                    strlen(path), 0);
        if (!ce)
            status = SYNC_STATUS_SYNCING;
        else
            status = SYNC_STATUS_SYNCED;


        if (status == SYNC_STATUS_SYNCED || is_writable)
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  params->repo_id,
                                                  path,
                                                  S_IFDIR,
                                                  status);
    }

    if (n == 0 && path[0] != 0 && is_writable) {
        if (!params->remain_files || *(params->remain_files) == ((void*)0)) {
            int rc = add_empty_dir_to_index (params->istate, path, st);
            if (rc == 1 && options && options->changeset) {
                unsigned char allzero[20] = {0};
                add_to_changeset (options->changeset,
                                  DIFF_STATUS_DIR_ADDED,
                                  allzero,
                                  st,
                                  ((void*)0),
                                  path,
                                  ((void*)0));
            }
        } else
            g_queue_push_tail (*(params->remain_files), g_strdup(path));
    }

    return 0;
}
