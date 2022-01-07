
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafRepoManager ;
typedef int SeafRepo ;


 int g_free (char*) ;
 char* gen_uuid () ;
 int seaf_repo_manager_add_repo (int *,int *) ;
 int * seaf_repo_new (char*,char const*,char const*) ;

SeafRepo*
seaf_repo_manager_create_new_repo (SeafRepoManager *mgr,
                                   const char *name,
                                   const char *desc)
{
    SeafRepo *repo;
    char *repo_id;

    repo_id = gen_uuid ();
    repo = seaf_repo_new (repo_id, name, desc);
    if (!repo) {
        g_free (repo_id);
        return ((void*)0);
    }
    g_free (repo_id);







    seaf_repo_manager_add_repo (mgr, repo);
    return repo;
}
