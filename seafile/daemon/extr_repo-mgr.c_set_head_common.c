
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * head; } ;
typedef TYPE_1__ SeafRepo ;
typedef int SeafBranch ;


 int seaf_branch_ref (int *) ;
 int seaf_branch_unref (int *) ;

__attribute__((used)) static void
set_head_common (SeafRepo *repo, SeafBranch *branch)
{
    if (repo->head)
        seaf_branch_unref (repo->head);
    repo->head = branch;
    seaf_branch_ref(branch);
}
