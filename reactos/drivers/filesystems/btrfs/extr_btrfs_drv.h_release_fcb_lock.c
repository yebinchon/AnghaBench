
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fcb_lock; } ;
typedef TYPE_1__ device_extension ;


 int ExReleaseResourceLite (int *) ;

__attribute__((used)) static __inline void release_fcb_lock(device_extension* Vcb) {
    ExReleaseResourceLite(&Vcb->fcb_lock);
}
