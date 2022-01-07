
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int IsFDO; } ;
struct TYPE_5__ {int NoPendingRequests; int IrpListHead; int IrpListLock; TYPE_1__ Common; } ;
typedef TYPE_2__* PFDO_DEVICE_EXTENSION ;


 int ASSERT (int ) ;
 int InitializeListHead (int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeInitializeSpinLock (int *) ;
 int NotificationEvent ;
 int TRUE ;

VOID
USBSTOR_QueueInitialize(
    PFDO_DEVICE_EXTENSION FDODeviceExtension)
{
    ASSERT(FDODeviceExtension->Common.IsFDO);
    KeInitializeSpinLock(&FDODeviceExtension->IrpListLock);
    InitializeListHead(&FDODeviceExtension->IrpListHead);
    KeInitializeEvent(&FDODeviceExtension->NoPendingRequests, NotificationEvent, TRUE);
}
