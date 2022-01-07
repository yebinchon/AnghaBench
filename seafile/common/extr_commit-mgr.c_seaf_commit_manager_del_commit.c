
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int commit_cache; } ;
typedef TYPE_2__ SeafCommitManager ;


 int commit ;
 int delete_commit (TYPE_2__*,char const*,int,char const*) ;
 int g_hash_table_lookup (int ,char const*) ;
 int g_return_if_fail (int ) ;
 int remove_commit_from_cache (TYPE_2__*,int ) ;

void
seaf_commit_manager_del_commit (SeafCommitManager *mgr,
                                const char *repo_id,
                                int version,
                                const char *id)
{
    g_return_if_fail (id != ((void*)0));
    delete_commit (mgr, repo_id, version, id);
}
