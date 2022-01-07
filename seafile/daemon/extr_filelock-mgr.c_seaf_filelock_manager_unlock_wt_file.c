
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int repo_mgr; } ;
struct TYPE_4__ {int worktree; } ;
typedef TYPE_1__ SeafRepo ;
typedef int SeafFilelockManager ;


 int FALSE ;
 int SEAF_PATH_PERM_RW ;
 char* g_build_filename (int ,char const*,int *) ;
 int g_free (char*) ;
 TYPE_3__* seaf ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,char const*) ;
 int seaf_set_path_permission (char*,int ,int ) ;
 int seaf_unset_path_permission (char*,int ) ;
 scalar_t__ seaf_util_exists (char*) ;

void
seaf_filelock_manager_unlock_wt_file (SeafFilelockManager *mgr,
                                      const char *repo_id,
                                      const char *path)
{
    SeafRepo *repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo)
        return;

    char *fullpath = g_build_filename (repo->worktree, path, ((void*)0));





    if (seaf_util_exists (fullpath))
        seaf_set_path_permission (fullpath, SEAF_PATH_PERM_RW, FALSE);

    g_free (fullpath);
}
