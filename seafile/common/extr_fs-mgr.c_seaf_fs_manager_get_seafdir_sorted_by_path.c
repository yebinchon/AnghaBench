
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; } ;
typedef int SeafFSManager ;
typedef TYPE_1__ SeafDir ;


 int compare_dirents ;
 int g_list_sort (int ,int ) ;
 int is_dirents_sorted (int ) ;
 TYPE_1__* seaf_fs_manager_get_seafdir_by_path (int *,char const*,int,char const*,char const*,int *) ;

SeafDir *
seaf_fs_manager_get_seafdir_sorted_by_path (SeafFSManager *mgr,
                                            const char *repo_id,
                                            int version,
                                            const char *root_id,
                                            const char *path)
{
    SeafDir *dir = seaf_fs_manager_get_seafdir_by_path (mgr, repo_id,
                                                        version, root_id,
                                                        path, ((void*)0));

    if (!dir)
        return ((void*)0);


    if (version > 0)
        return dir;

    if (!is_dirents_sorted (dir->entries))
        dir->entries = g_list_sort (dir->entries, compare_dirents);

    return dir;
}
