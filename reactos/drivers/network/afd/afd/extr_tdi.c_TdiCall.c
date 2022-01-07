
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Status; } ;
struct TYPE_6__ {int UserEvent; } ;
typedef int * PKEVENT ;
typedef TYPE_1__* PIRP ;
typedef TYPE_2__* PIO_STATUS_BLOCK ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int Executive ;
 int FALSE ;
 scalar_t__ IoCallDriver (int ,TYPE_1__*) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int MAX_TRACE ;
 int MID_TRACE ;
 scalar_t__ STATUS_PENDING ;

__attribute__((used)) static NTSTATUS TdiCall(
    PIRP Irp,
    PDEVICE_OBJECT DeviceObject,
    PKEVENT Event,
    PIO_STATUS_BLOCK Iosb)
{
    NTSTATUS Status;

    AFD_DbgPrint(MID_TRACE, ("Called\n"));

    AFD_DbgPrint(MID_TRACE, ("Irp->UserEvent = %p\n", Irp->UserEvent));

    Status = IoCallDriver(DeviceObject, Irp);
    AFD_DbgPrint(MID_TRACE, ("IoCallDriver: %08x\n", Status));

    if ((Status == STATUS_PENDING) && (Event != ((void*)0))) {
        AFD_DbgPrint(MAX_TRACE, ("Waiting on transport.\n"));
        KeWaitForSingleObject(Event,
                              Executive,
                              KernelMode,
                              FALSE,
                              ((void*)0));
        Status = Iosb->Status;
    }

    AFD_DbgPrint(MAX_TRACE, ("Status (0x%X).\n", Status));

    return Status;
}
