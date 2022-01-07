
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int guint8 ;
struct TYPE_7__ {int obj_store; } ;
struct TYPE_6__ {int file_id; } ;
typedef TYPE_1__ Seafile ;
typedef TYPE_2__ SeafFSManager ;


 int FALSE ;
 int g_free (int *) ;
 scalar_t__ seaf_obj_store_write_obj (int ,char const*,int,int ,int *,int,int ) ;
 int * seafile_to_data (TYPE_1__*,int*) ;

int
seafile_save (SeafFSManager *fs_mgr,
              const char *repo_id,
              int version,
              Seafile *file)
{
    guint8 *data;
    int len;
    int ret = 0;

    data = seafile_to_data (file, &len);
    if (!data)
        return -1;

    if (seaf_obj_store_write_obj (fs_mgr->obj_store, repo_id, version, file->file_id,
                                  data, len, FALSE) < 0)
        ret = -1;

    g_free (data);
    return ret;
}
