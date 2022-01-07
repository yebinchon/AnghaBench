
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef int gint64 ;
typedef int gboolean ;
struct TYPE_11__ {int sync_mgr; } ;
struct TYPE_10__ {char const* repo_id; int version; char const* modifier; char const* worktree; int * options; int ** remain_files; int * total_size; int * ignore_list; int ignore_empty_dir; int * crypt; struct index_state* istate; } ;
struct TYPE_9__ {int st_mode; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafStat ;
typedef int GQueue ;
typedef int GList ;
typedef TYPE_2__ AddParams ;
typedef int AddOptions ;


 int FALSE ;
 int PATH_SEPERATOR ;
 int SYNC_STATUS_ERROR ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int add_dir_recursive (char const*,char*,TYPE_1__*,TYPE_2__*,int ) ;
 int add_file (char const*,int,char const*,struct index_state*,char const*,char*,TYPE_1__*,int *,int *,int **,int *) ;
 char* g_build_path (int ,char const*,char const*,int *) ;
 int g_free (char*) ;
 scalar_t__ lstat (char*,TYPE_1__*) ;
 TYPE_4__* seaf ;
 scalar_t__ seaf_stat (char*,TYPE_1__*) ;
 int seaf_sync_manager_update_active_path (int ,char const*,char const*,int ,int ) ;
 int seaf_warning (char*,char*) ;

__attribute__((used)) static int
add_recursive (const char *repo_id,
               int version,
               const char *modifier,
               struct index_state *istate,
               const char *worktree,
               const char *path,
               SeafileCrypt *crypt,
               gboolean ignore_empty_dir,
               GList *ignore_list,
               gint64 *total_size,
               GQueue **remain_files,
               AddOptions *options)
{
    char *full_path;
    SeafStat st;

    full_path = g_build_path (PATH_SEPERATOR, worktree, path, ((void*)0));
    if (seaf_stat (full_path, &st) < 0) {

        if (lstat (full_path, &st) == 0 && S_ISLNK(st.st_mode)) {
            g_free (full_path);
            return 0;
        }
        seaf_warning ("Failed to stat %s.\n", full_path);
        g_free (full_path);


        seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                              repo_id,
                                              path,
                                              0,
                                              SYNC_STATUS_ERROR);

        return 0;
    }

    if (S_ISREG(st.st_mode)) {
        add_file (repo_id,
                  version,
                  modifier,
                  istate,
                  path,
                  full_path,
                  &st,
                  crypt,
                  total_size,
                  remain_files,
                  options);
    } else if (S_ISDIR(st.st_mode)) {
        AddParams params = {
            .repo_id = repo_id,
            .version = version,
            .modifier = modifier,
            .istate = istate,
            .worktree = worktree,
            .crypt = crypt,
            .ignore_empty_dir = ignore_empty_dir,
            .ignore_list = ignore_list,
            .total_size = total_size,
            .remain_files = remain_files,
            .options = options,
        };

        add_dir_recursive (path, full_path, &st, &params, FALSE);
    }

    g_free (full_path);
    return 0;
}
