
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fcb_lock; } ;
typedef TYPE_1__ device_extension ;


 int ExAcquireResourceExclusiveLite (int *,int) ;

__attribute__((used)) static __inline void acquire_fcb_lock_exclusive(device_extension* Vcb) {
    ExAcquireResourceExclusiveLite(&Vcb->fcb_lock, 1);
}
