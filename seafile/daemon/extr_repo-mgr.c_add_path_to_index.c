
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef int options ;
typedef int gint64 ;
struct TYPE_19__ {int changeset; int is_repo_ro; int * fset; int startup_scan; } ;
struct TYPE_18__ {char* data; struct TYPE_18__* next; } ;
struct TYPE_17__ {int worktree; int email; int version; int id; int changeset; int is_readonly; int name; } ;
struct TYPE_16__ {int st_mode; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ SeafRepo ;
typedef int LockedFileSet ;
typedef int GQueue ;
typedef TYPE_3__ GList ;
typedef TYPE_4__ AddOptions ;


 scalar_t__ ENOENT ;
 int FALSE ;
 int SYNC_ERROR_ID_INDEX_ERROR ;
 scalar_t__ S_ISDIR (int ) ;
 int TRUE ;
 int add_recursive (int ,int ,int ,struct index_state*,int ,char const*,int *,int ,TYPE_3__*,int *,int **,TYPE_4__*) ;
 scalar_t__ check_full_path_ignore (int ,char const*,TYPE_3__*) ;
 scalar_t__ errno ;
 char* g_build_filename (int ,char const*,int *) ;
 int g_free (char*) ;
 TYPE_3__* g_list_prepend (TYPE_3__*,int ) ;
 char* g_strconcat (char*,char*,int *) ;
 int g_strdup (char const*) ;
 int memset (TYPE_4__*,int ,int) ;
 int remove_deleted (struct index_state*,int ,char*,TYPE_3__*,int *,int ,int ,int ) ;
 int seaf_debug (char*,char const*) ;
 scalar_t__ seaf_stat (char*,TYPE_1__*) ;
 int seaf_warning (char*,char const*,int ) ;
 int send_file_sync_error_notification (int ,int ,char const*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strerror (scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static int
add_path_to_index (SeafRepo *repo, struct index_state *istate,
                   SeafileCrypt *crypt, const char *path, GList *ignore_list,
                   GList **scanned_dirs, gint64 *total_size, GQueue **remain_files,
                   LockedFileSet *fset)
{
    char *full_path;
    SeafStat st;
    AddOptions options;




    if (path[0] == 0) {
        remove_deleted (istate, repo->worktree, "", ignore_list, fset,
                        repo->id, repo->is_readonly, repo->changeset);

        memset (&options, 0, sizeof(options));
        options.fset = fset;
        options.is_repo_ro = repo->is_readonly;
        options.startup_scan = TRUE;
        options.changeset = repo->changeset;

        add_recursive (repo->id, repo->version, repo->email, istate,
                       repo->worktree, path,
                       crypt, FALSE, ignore_list,
                       total_size, remain_files, &options);

        return 0;
    }




    GList *ptr;
    char *dir, *full_dir;
    for (ptr = *scanned_dirs; ptr; ptr = ptr->next) {
        dir = ptr->data;

        if (strcmp (dir, path) == 0) {
            seaf_debug ("%s has been scanned before, skip adding.\n", path);
            return 0;
        }


        full_dir = g_strconcat (dir, "/", ((void*)0));
        if (strncmp (full_dir, path, strlen(full_dir)) == 0) {
            g_free (full_dir);
            seaf_debug ("%s has been scanned before, skip adding.\n", path);
            return 0;
        }
        g_free (full_dir);
    }

    if (check_full_path_ignore (repo->worktree, path, ignore_list))
        return 0;

    full_path = g_build_filename (repo->worktree, path, ((void*)0));

    if (seaf_stat (full_path, &st) < 0) {
        if (errno != ENOENT)
            send_file_sync_error_notification (repo->id, repo->name, path,
                                               SYNC_ERROR_ID_INDEX_ERROR);
        seaf_warning ("Failed to stat %s: %s.\n", path, strerror(errno));
        g_free (full_path);
        return -1;
    }

    if (S_ISDIR(st.st_mode))
        *scanned_dirs = g_list_prepend (*scanned_dirs, g_strdup(path));

    memset (&options, 0, sizeof(options));
    options.fset = fset;
    options.is_repo_ro = repo->is_readonly;
    options.changeset = repo->changeset;


    add_recursive (repo->id, repo->version, repo->email, istate, repo->worktree, path,
                   crypt, FALSE, ignore_list, total_size, remain_files, &options);

    g_free (full_path);
    return 0;
}
