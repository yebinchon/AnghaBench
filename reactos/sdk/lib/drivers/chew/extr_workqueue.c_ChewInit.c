
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PDEVICE_OBJECT ;


 int InitializeListHead (int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeInitializeSpinLock (int *) ;
 int NotificationEvent ;
 int TRUE ;
 int WorkQueue ;
 int WorkQueueClear ;
 int WorkQueueDevice ;
 int WorkQueueLock ;

VOID ChewInit(PDEVICE_OBJECT DeviceObject)
{
    WorkQueueDevice = DeviceObject;
    InitializeListHead(&WorkQueue);
    KeInitializeSpinLock(&WorkQueueLock);
    KeInitializeEvent(&WorkQueueClear, NotificationEvent, TRUE);
}
