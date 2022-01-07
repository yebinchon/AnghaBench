
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int * Interrupt; } ;
struct TYPE_6__ {int OldIrql; } ;
struct TYPE_7__ {int Lock; TYPE_1__ Context; } ;
typedef TYPE_2__* PSTOR_LOCK_HANDLE ;
typedef TYPE_3__* PFDO_DEVICE_EXTENSION ;


 int DPRINT1 (char*,...) ;


 int KeReleaseInterruptSpinLock (int *,int ) ;


__attribute__((used)) static
VOID
PortReleaseSpinLock(
    PFDO_DEVICE_EXTENSION DeviceExtension,
    PSTOR_LOCK_HANDLE LockHandle)
{
    DPRINT1("PortReleaseSpinLock(%p %p)\n",
            DeviceExtension, LockHandle);

    switch (LockHandle->Lock)
    {
        case 130:
            DPRINT1("DpcLock\n");
            break;

        case 128:
            DPRINT1("StartIoLock\n");
            break;

        case 129:
            DPRINT1("InterruptLock\n");
            if (DeviceExtension->Interrupt != ((void*)0))
                KeReleaseInterruptSpinLock(DeviceExtension->Interrupt,
                                           LockHandle->Context.OldIrql);
            break;
    }
}
