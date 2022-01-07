
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ondisk_size; int ondisk; int dir_id; } ;
struct TYPE_5__ {int obj_store; } ;
typedef TYPE_1__ SeafFSManager ;
typedef TYPE_2__ SeafDir ;


 int EMPTY_SHA1 ;
 int FALSE ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ seaf_obj_store_write_obj (int ,char const*,int,int ,int ,int ,int ) ;

int
seaf_dir_save (SeafFSManager *fs_mgr,
               const char *repo_id,
               int version,
               SeafDir *dir)
{
    int ret = 0;


    if (memcmp (dir->dir_id, EMPTY_SHA1, 40) == 0)
        return 0;

    if (seaf_obj_store_write_obj (fs_mgr->obj_store, repo_id, version, dir->dir_id,
                                  dir->ondisk, dir->ondisk_size, FALSE) < 0)
        ret = -1;

    return ret;
}
