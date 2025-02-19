
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int SeafFSManager ;
typedef int GError ;


 int S_ISDIR (int ) ;
 int g_free (char*) ;
 char* seaf_fs_manager_path_to_obj_id (int *,char const*,int,char const*,char const*,int *,int **) ;

char *
seaf_fs_manager_get_seafdir_id_by_path (SeafFSManager *mgr,
                                        const char *repo_id,
                                        int version,
                                        const char *root_id,
                                        const char *path,
                                        GError **error)
{
    guint32 mode = 0;
    char *dir_id;

    dir_id = seaf_fs_manager_path_to_obj_id (mgr, repo_id, version,
                                             root_id, path, &mode, error);

    if (!dir_id)
        return ((void*)0);

    if (dir_id && !S_ISDIR(mode)) {
        g_free (dir_id);
        return ((void*)0);
    }

    return dir_id;
}
