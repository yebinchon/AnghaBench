
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ext; int * fcb; } ;
typedef TYPE_1__ rollback_extent ;
typedef int fcb ;
struct TYPE_7__ {int ignore; } ;
typedef TYPE_2__ extent ;
typedef int LIST_ENTRY ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int NonPagedPool ;
 int ROLLBACK_DELETE_EXTENT ;
 int add_rollback (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void remove_fcb_extent(fcb* fcb, extent* ext, LIST_ENTRY* rollback) {
    if (!ext->ignore) {
        rollback_extent* re;

        ext->ignore = 1;

        re = ExAllocatePoolWithTag(NonPagedPool, sizeof(rollback_extent), ALLOC_TAG);
        if (!re) {
            ERR("out of memory\n");
            return;
        }

        re->fcb = fcb;
        re->ext = ext;

        add_rollback(rollback, ROLLBACK_DELETE_EXTENT, re);
    }
}
