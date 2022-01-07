
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafCommitManager ;
typedef int SeafCommit ;


 int * seaf_commit_manager_get_commit (int *,char const*,int,char const*) ;

SeafCommit *
seaf_commit_manager_get_commit_compatible (SeafCommitManager *mgr,
                                           const char *repo_id,
                                           const char *id)
{
    SeafCommit *commit = ((void*)0);


    commit = seaf_commit_manager_get_commit (mgr, repo_id, 1, id);
    if (commit)
        return commit;





    return commit;
}
