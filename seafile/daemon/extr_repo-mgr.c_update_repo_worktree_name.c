
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_6__ {int wt_monitor; int repo_mgr; } ;
struct TYPE_5__ {int id; int worktree; } ;
typedef TYPE_1__ SeafRepo ;


 int errno ;
 char* g_build_filename (char*,char const*,int *) ;
 int g_free (char*) ;
 char* g_path_get_basename (int ) ;
 char* g_path_get_dirname (int ) ;
 scalar_t__ g_strcmp0 (char*,char*) ;
 TYPE_4__* seaf ;
 int seaf_message (char*,int ,char const*) ;
 scalar_t__ seaf_repo_manager_set_repo_worktree (int ,TYPE_1__*,char*) ;
 scalar_t__ seaf_util_rename (int ,char*) ;
 int seaf_warning (char*,int ,...) ;
 scalar_t__ seaf_wt_monitor_unwatch_repo (int ,int ) ;
 scalar_t__ seaf_wt_monitor_watch_repo (int ,int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
update_repo_worktree_name (SeafRepo *repo, const char *new_name, gboolean rewatch)
{
    char *dirname = ((void*)0), *basename = ((void*)0);
    char *new_worktree = ((void*)0);

    seaf_message ("Update worktree folder name of repo %s to %s.\n",
                  repo->id, new_name);

    dirname = g_path_get_dirname (repo->worktree);
    if (g_strcmp0 (dirname, ".") == 0)
        return;
    basename = g_path_get_basename (repo->worktree);

    new_worktree = g_build_filename (dirname, new_name, ((void*)0));




    if (seaf_util_rename (repo->worktree, new_worktree) < 0) {
        seaf_warning ("Failed to rename worktree from %s to %s: %s.\n",
                      repo->worktree, new_worktree, strerror(errno));
        goto out;
    }

    if (seaf_repo_manager_set_repo_worktree (seaf->repo_mgr, repo, new_worktree) < 0) {
        goto out;
    }

    if (rewatch) {
        if (seaf_wt_monitor_unwatch_repo (seaf->wt_monitor, repo->id) < 0) {
            seaf_warning ("Failed to unwatch repo %s old worktree.\n", repo->id);
            goto out;
        }

        if (seaf_wt_monitor_watch_repo (seaf->wt_monitor, repo->id, repo->worktree) < 0) {
            seaf_warning ("Failed to watch repo %s new worktree.\n", repo->id);
        }
    }

out:
    g_free (dirname);
    g_free (basename);
    g_free (new_worktree);
}
