
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; } ;
typedef TYPE_1__ SeafRepo ;
typedef int SeafBranch ;


 scalar_t__ save_branch_repo_map (int ,int *) ;
 int set_head_common (TYPE_1__*,int *) ;

int
seaf_repo_set_head (SeafRepo *repo, SeafBranch *branch)
{
    if (save_branch_repo_map (repo->manager, branch) < 0)
        return -1;
    set_head_common (repo, branch);
    return 0;
}
