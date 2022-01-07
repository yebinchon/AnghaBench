
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int worktree_invalid; scalar_t__ worktree; int id; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 int FALSE ;
 int F_OK ;
 scalar_t__ g_access (char const*,int ) ;
 int g_free (scalar_t__) ;
 scalar_t__ g_strdup (char const*) ;
 scalar_t__ seaf_repo_manager_set_repo_property (int *,int ,char*,scalar_t__) ;

int
seaf_repo_manager_set_repo_worktree (SeafRepoManager *mgr,
                                     SeafRepo *repo,
                                     const char *worktree)
{
    if (g_access(worktree, F_OK) != 0)
        return -1;

    if (repo->worktree)
        g_free (repo->worktree);
    repo->worktree = g_strdup(worktree);

    if (seaf_repo_manager_set_repo_property (mgr, repo->id,
                                             "worktree",
                                             repo->worktree) < 0)
        return -1;

    repo->worktree_invalid = FALSE;

    return 0;
}
