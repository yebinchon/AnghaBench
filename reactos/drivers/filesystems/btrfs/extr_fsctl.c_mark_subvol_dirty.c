
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dirty; int list_entry_dirty; } ;
typedef TYPE_1__ root ;
struct TYPE_6__ {int need_write; int dirty_subvols_lock; int dirty_subvols; } ;
typedef TYPE_2__ device_extension ;


 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int InsertTailList (int *,int *) ;

__attribute__((used)) static void mark_subvol_dirty(device_extension* Vcb, root* r) {
    if (!r->dirty) {
        r->dirty = 1;

        ExAcquireResourceExclusiveLite(&Vcb->dirty_subvols_lock, 1);
        InsertTailList(&Vcb->dirty_subvols, &r->list_entry_dirty);
        ExReleaseResourceLite(&Vcb->dirty_subvols_lock);
    }

    Vcb->need_write = 1;
}
