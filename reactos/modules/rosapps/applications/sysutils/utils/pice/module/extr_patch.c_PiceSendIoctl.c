
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Status; } ;
typedef int PVOID ;
typedef int * PIRP ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;
typedef int KEVENT ;
typedef TYPE_1__ IO_STATUS_BLOCK ;


 int ASSERT (int) ;
 int DPRINT (int ) ;
 int Executive ;
 int FALSE ;
 int * IoBuildDeviceIoControlRequest (int ,int ,int ,int ,int ,int ,int ,int *,TYPE_1__*) ;
 scalar_t__ IoCallDriver (int ,int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 scalar_t__ KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int NT_SUCCESS (scalar_t__) ;
 int NotificationEvent ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 int TRUE ;

NTSTATUS PiceSendIoctl(PDEVICE_OBJECT Target, ULONG Ioctl,
     PVOID InputBuffer, ULONG InputBufferLength)
{
    KEVENT event;
    NTSTATUS status = STATUS_SUCCESS;
    IO_STATUS_BLOCK iosb;
    PIRP irp;

    KeInitializeEvent(&event,
                      NotificationEvent,
                      FALSE
                      );

    if (((void*)0) == (irp = IoBuildDeviceIoControlRequest(Ioctl,
                                                     Target,
                                                     InputBuffer,
                                                     InputBufferLength,
                                                     0,
                                                     0,
                                                     TRUE,
                                                     &event,
                                                     &iosb))) {
  DPRINT((0,"PiceSendIoctl: STATUS_INSUFFICIENT_RESOURCES\n"));
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    status = IoCallDriver(Target, irp);

    if (STATUS_PENDING == status) {

  status = KeWaitForSingleObject(&event,
                                       Executive,
                                       KernelMode,
                                       FALSE,
                                       ((void*)0));

        ASSERT(STATUS_SUCCESS == status);
        status = iosb.Status;
    }
 DPRINT((0,"PiceSendIoctl: status: %d\n",NT_SUCCESS(status)));
    return status;
}
