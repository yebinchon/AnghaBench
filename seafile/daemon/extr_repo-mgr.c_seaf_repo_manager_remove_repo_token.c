
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int * token; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 int REPO_PROP_TOKEN ;
 int g_free (int *) ;
 int seaf_repo_manager_del_repo_property_by_key (int *,int ,int ) ;

int
seaf_repo_manager_remove_repo_token (SeafRepoManager *manager,
                                     SeafRepo *repo)
{
    g_free (repo->token);
    repo->token = ((void*)0);
    seaf_repo_manager_del_repo_property_by_key(manager, repo->id, REPO_PROP_TOKEN);
    return 0;
}
