
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; int name; int * worktree; } ;
struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ SeafRepo ;


 int F_OK ;
 int S_ISDIR (int ) ;
 scalar_t__ g_access (int *,int ) ;
 scalar_t__ seaf_stat (int *,TYPE_1__*) ;
 int seaf_warning (char*,int *,int ,...) ;

int
seaf_repo_check_worktree (SeafRepo *repo)
{
    SeafStat st;

    if (repo->worktree == ((void*)0)) {
        seaf_warning ("Worktree for repo '%s'(%.8s) is not set.\n",
                      repo->name, repo->id);
        return -1;
    }


    if (g_access(repo->worktree, F_OK) < 0) {
        seaf_warning ("Failed to access worktree %s for repo '%s'(%.8s)\n",
                      repo->worktree, repo->name, repo->id);
        return -1;
    }
    if (seaf_stat(repo->worktree, &st) < 0) {
        seaf_warning ("Failed to stat worktree %s for repo '%s'(%.8s)\n",
                      repo->worktree, repo->name, repo->id);
        return -1;
    }
    if (!S_ISDIR(st.st_mode)) {
        seaf_warning ("Worktree %s for repo '%s'(%.8s) is not a directory.\n",
                      repo->worktree, repo->name, repo->id);
        return -1;
    }

    return 0;
}
