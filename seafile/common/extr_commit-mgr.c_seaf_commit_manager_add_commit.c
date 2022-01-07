
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int version; int repo_id; } ;
typedef int SeafCommitManager ;
typedef TYPE_1__ SeafCommit ;


 int save_commit (int *,int ,int ,TYPE_1__*) ;

int
seaf_commit_manager_add_commit (SeafCommitManager *mgr,
                                SeafCommit *commit)
{
    int ret;


    if ((ret = save_commit (mgr, commit->repo_id, commit->version, commit)) < 0)
        return -1;

    return 0;
}
