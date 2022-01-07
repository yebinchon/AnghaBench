
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int obj_store; TYPE_1__* priv; } ;
struct TYPE_4__ {int commit_cache; } ;
typedef TYPE_2__ SeafCommitManager ;


 int TRUE ;
 int * commit ;
 int * g_hash_table_lookup (int ,char const*) ;
 int seaf_obj_store_obj_exists (int ,char const*,int,char const*) ;

gboolean
seaf_commit_manager_commit_exists (SeafCommitManager *mgr,
                                   const char *repo_id,
                                   int version,
                                   const char *id)
{






    return seaf_obj_store_obj_exists (mgr->obj_store, repo_id, version, id);
}
