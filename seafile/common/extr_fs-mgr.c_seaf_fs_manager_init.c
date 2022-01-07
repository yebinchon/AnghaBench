
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ev_mgr; } ;
struct TYPE_4__ {int obj_store; } ;
typedef TYPE_1__ SeafFSManager ;


 int FALSE ;
 int TRUE ;
 TYPE_3__* seaf ;
 scalar_t__ seaf_obj_store_init (int ,int ,int *) ;
 int seaf_warning (char*) ;

int
seaf_fs_manager_init (SeafFSManager *mgr)
{
    if (seaf_obj_store_init (mgr->obj_store, TRUE, seaf->ev_mgr) < 0) {
        seaf_warning ("[fs mgr] Failed to init fs object store.\n");
        return -1;
    }


    return 0;
}
