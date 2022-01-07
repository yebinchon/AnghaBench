
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TraverseFSPathCallback ;
typedef int SeafFSManager ;
typedef int SeafDirent ;


 int seaf_dirent_free (int *) ;
 int * seaf_fs_manager_get_dirent_by_path (int *,char const*,int,char const*,char const*,int *) ;
 int seaf_warning (char*,char const*,char const*) ;
 int traverse_dir_path (int *,char const*,int,char const*,int *,int ,void*) ;

int
seaf_fs_manager_traverse_path (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *root_id,
                               const char *dir_path,
                               TraverseFSPathCallback callback,
                               void *user_data)
{
    SeafDirent *dent;
    int ret = 0;

    dent = seaf_fs_manager_get_dirent_by_path (mgr, repo_id, version,
                                               root_id, dir_path, ((void*)0));
    if (!dent) {
        seaf_warning ("Failed to get dirent for %.8s:%s.\n", repo_id, dir_path);
        return -1;
    }

    ret = traverse_dir_path (mgr, repo_id, version, dir_path, dent,
                             callback, user_data);

    seaf_dirent_free (dent);
    return ret;
}
