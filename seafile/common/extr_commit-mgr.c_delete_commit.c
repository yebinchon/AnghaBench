
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj_store; } ;
typedef TYPE_1__ SeafCommitManager ;


 int seaf_obj_store_delete_obj (int ,char const*,int,char const*) ;

__attribute__((used)) static void
delete_commit (SeafCommitManager *mgr,
               const char *repo_id,
               int version,
               const char *id)
{
    seaf_obj_store_delete_obj (mgr->obj_store, repo_id, version, id);
}
