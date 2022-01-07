
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 int seaf_repo_manager_move_repo_store (int *,char*,int ) ;

__attribute__((used)) static void
move_repo_stores (SeafRepoManager *mgr, SeafRepo *repo)
{
    seaf_repo_manager_move_repo_store (mgr, "commits", repo->id);
    seaf_repo_manager_move_repo_store (mgr, "fs", repo->id);
}
