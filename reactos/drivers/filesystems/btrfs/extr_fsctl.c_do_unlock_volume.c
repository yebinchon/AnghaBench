
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int event; } ;
struct TYPE_7__ {int locked; TYPE_2__ balance; scalar_t__ lock_paused_balance; int * locked_fileobj; TYPE_1__* Vpb; } ;
typedef TYPE_3__ device_extension ;
struct TYPE_5__ {int Flags; } ;
typedef int KIRQL ;


 int IoAcquireVpbSpinLock (int *) ;
 int IoReleaseVpbSpinLock (int ) ;
 int KeSetEvent (int *,int ,int) ;
 int VPB_LOCKED ;

void do_unlock_volume(device_extension* Vcb) {
    KIRQL irql;

    IoAcquireVpbSpinLock(&irql);

    Vcb->locked = 0;
    Vcb->Vpb->Flags &= ~VPB_LOCKED;
    Vcb->locked_fileobj = ((void*)0);

    IoReleaseVpbSpinLock(irql);

    if (Vcb->lock_paused_balance)
        KeSetEvent(&Vcb->balance.event, 0, 0);
}
