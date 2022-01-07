
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int commit_cache; } ;
typedef TYPE_2__ SeafCommitManager ;
typedef int SeafCommit ;


 int * g_hash_table_lookup (int ,char const*) ;
 int * load_commit (TYPE_2__*,char const*,int,char const*) ;
 int seaf_commit_ref (int *) ;

SeafCommit*
seaf_commit_manager_get_commit (SeafCommitManager *mgr,
                                const char *repo_id,
                                int version,
                                const char *id)
{
    SeafCommit *commit;
    commit = load_commit (mgr, repo_id, version, id);
    if (!commit)
        return ((void*)0);



    return commit;
}
