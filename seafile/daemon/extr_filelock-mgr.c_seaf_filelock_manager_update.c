
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafFilelockManager ;
typedef int GHashTable ;


 int update_db (int *,char const*) ;
 int update_in_memory (int *,char const*,int *) ;

int
seaf_filelock_manager_update (SeafFilelockManager *mgr,
                              const char *repo_id,
                              GHashTable *new_locked_files)
{
    update_in_memory (mgr, repo_id, new_locked_files);

    int ret = update_db (mgr, repo_id);

    return ret;
}
