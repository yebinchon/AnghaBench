
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int branch_mgr; } ;
struct TYPE_4__ {int head; int repo_id; } ;
typedef int SeafBranch ;
typedef TYPE_1__ HttpTxTask ;


 TYPE_3__* seaf ;
 int seaf_branch_manager_add_branch (int ,int *) ;
 int * seaf_branch_manager_get_branch (int ,int ,char*) ;
 int seaf_branch_manager_update_branch (int ,int *) ;
 int * seaf_branch_new (char*,int ,int ) ;
 int seaf_branch_set_commit (int *,int ) ;
 int seaf_branch_unref (int *) ;

__attribute__((used)) static void
update_master_branch (HttpTxTask *task)
{
    SeafBranch *branch;
    branch = seaf_branch_manager_get_branch (seaf->branch_mgr,
                                             task->repo_id,
                                             "master");
    if (!branch) {
        branch = seaf_branch_new ("master", task->repo_id, task->head);
        seaf_branch_manager_add_branch (seaf->branch_mgr, branch);
        seaf_branch_unref (branch);
    } else {
        seaf_branch_set_commit (branch, task->head);
        seaf_branch_manager_update_branch (seaf->branch_mgr, branch);
        seaf_branch_unref (branch);
    }
}
