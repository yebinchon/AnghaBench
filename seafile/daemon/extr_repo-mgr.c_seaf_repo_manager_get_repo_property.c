
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafRepoManager ;


 char* load_repo_property (int *,char const*,char const*) ;

char *
seaf_repo_manager_get_repo_property (SeafRepoManager *manager,
                                     const char *repo_id,
                                     const char *key)
{
    return load_repo_property (manager, repo_id, key);
}
