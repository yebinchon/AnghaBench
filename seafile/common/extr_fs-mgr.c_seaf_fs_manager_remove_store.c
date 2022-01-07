
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj_store; } ;
typedef TYPE_1__ SeafFSManager ;


 int seaf_obj_store_remove_store (int ,char const*) ;

int
seaf_fs_manager_remove_store (SeafFSManager *mgr,
                              const char *store_id)
{
    return seaf_obj_store_remove_store (mgr->obj_store, store_id);
}
