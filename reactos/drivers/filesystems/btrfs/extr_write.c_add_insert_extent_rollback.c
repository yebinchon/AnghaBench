
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ext; int * fcb; } ;
typedef TYPE_1__ rollback_extent ;
typedef int fcb ;
typedef int extent ;
typedef int LIST_ENTRY ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int NonPagedPool ;
 int ROLLBACK_INSERT_EXTENT ;
 int add_rollback (int *,int ,TYPE_1__*) ;

void add_insert_extent_rollback(LIST_ENTRY* rollback, fcb* fcb, extent* ext) {
    rollback_extent* re;

    re = ExAllocatePoolWithTag(NonPagedPool, sizeof(rollback_extent), ALLOC_TAG);
    if (!re) {
        ERR("out of memory\n");
        return;
    }

    re->fcb = fcb;
    re->ext = ext;

    add_rollback(rollback, ROLLBACK_INSERT_EXTENT, re);
}
