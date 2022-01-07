
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct index_state {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef scalar_t__ gboolean ;
struct TYPE_9__ {int sync_mgr; } ;
struct TYPE_8__ {int message; } ;
struct TYPE_7__ {int id; int is_readonly; int worktree; } ;
typedef int SyncStatus ;
typedef TYPE_1__ SeafRepo ;
typedef int GList ;
typedef TYPE_2__ GError ;
typedef int GDir ;


 scalar_t__ FALSE ;
 int G_NORMALIZE_NFC ;
 int SYNC_STATUS_IGNORED ;
 int SYNC_STATUS_SYNCED ;
 int SYNC_STATUS_SYNCING ;
 int S_IFDIR ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ TRUE ;
 int errno ;
 char* g_build_filename (int ,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char*,int ,TYPE_2__**) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,char*,int *) ;
 char* g_utf8_normalize (char const*,int,int ) ;
 struct cache_entry* index_name_exists (struct index_state*,char const*,int ,int ) ;
 int is_path_writable (int ,int ,char const*) ;
 TYPE_5__* seaf ;
 int seaf_sync_manager_update_active_path (int ,int ,char const*,int ,int ) ;
 int seaf_warning (char*,char*,int ) ;
 scalar_t__ should_ignore (char*,char*,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;
 int strlen (char const*) ;
 int update_active_file (TYPE_1__*,char*,struct stat*,struct index_state*,scalar_t__) ;

__attribute__((used)) static void
update_active_path_recursive (SeafRepo *repo,
                              const char *path,
                              struct index_state *istate,
                              GList *ignore_list,
                              gboolean ignored)
{
    GDir *dir;
    GError *error = ((void*)0);
    const char *name;
    char *dname;
    char *full_path, *full_sub_path, *sub_path;
    struct stat st;
    gboolean ignore_sub;

    full_path = g_build_filename(repo->worktree, path, ((void*)0));

    dir = g_dir_open (full_path, 0, &error);
    if (!dir) {
        seaf_warning ("Failed to open dir %s: %s.\n", full_path, error->message);
        g_free (full_path);
        return;
    }

    int n = 0;
    while ((name = g_dir_read_name(dir)) != ((void*)0)) {
        ++n;

        dname = g_utf8_normalize (name, -1, G_NORMALIZE_NFC);
        sub_path = g_strconcat (path, "/", dname, ((void*)0));
        full_sub_path = g_strconcat (full_path, "/", dname, ((void*)0));

        ignore_sub = FALSE;
        if (ignored || should_ignore(full_path, dname, ignore_list))
            ignore_sub = TRUE;

        if (stat (full_sub_path, &st) < 0) {
            seaf_warning ("Failed to stat %s: %s.\n", full_sub_path, strerror(errno));
            g_free (dname);
            g_free (sub_path);
            g_free (full_sub_path);
            continue;
        }

        if (S_ISDIR(st.st_mode)) {
            update_active_path_recursive (repo, sub_path, istate, ignore_list,
                                          ignore_sub);
        } else if (S_ISREG(st.st_mode)) {
            update_active_file (repo, sub_path, &st, istate,
                                ignore_sub);
        }

        g_free (dname);
        g_free (sub_path);
        g_free (full_sub_path);
    }

    g_dir_close (dir);

    g_free (full_path);




    if (!is_path_writable (repo->id, repo->is_readonly, path))
        return;

    if (n == 0 && path[0] != 0) {
        if (ignored) {
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo->id,
                                                  path,
                                                  S_IFDIR,
                                                  SYNC_STATUS_IGNORED);
        } else {

            SyncStatus status;
            struct cache_entry *ce = index_name_exists(istate, path, strlen(path), 0);
            if (!ce)
                status = SYNC_STATUS_SYNCING;
            else
                status = SYNC_STATUS_SYNCED;
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo->id,
                                                  path,
                                                  S_IFDIR,
                                                  status);
        }
    }
}
