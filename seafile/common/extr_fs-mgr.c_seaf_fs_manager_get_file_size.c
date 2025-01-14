
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_6__ {int fs_mgr; } ;
struct TYPE_5__ {int file_size; } ;
typedef TYPE_1__ Seafile ;
typedef int SeafFSManager ;


 TYPE_4__* seaf ;
 TYPE_1__* seaf_fs_manager_get_seafile (int ,char const*,int,char const*) ;
 int seaf_warning (char*,char const*,char const*) ;
 int seafile_unref (TYPE_1__*) ;

gint64
seaf_fs_manager_get_file_size (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *file_id)
{
    Seafile *file;
    gint64 file_size;

    file = seaf_fs_manager_get_seafile (seaf->fs_mgr, repo_id, version, file_id);
    if (!file) {
        seaf_warning ("Couldn't get file %s:%s\n", repo_id, file_id);
        return -1;
    }

    file_size = file->file_size;

    seafile_unref (file);
    return file_size;
}
