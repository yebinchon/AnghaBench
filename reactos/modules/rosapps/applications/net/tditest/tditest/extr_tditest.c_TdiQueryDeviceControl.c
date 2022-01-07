
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int Information; } ;
struct TYPE_5__ {int FileObject; int DeviceObject; } ;
typedef int PVOID ;
typedef int * PULONG ;
typedef int PIRP ;
typedef TYPE_1__* PIO_STACK_LOCATION ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef TYPE_2__ IO_STATUS_BLOCK ;


 int FALSE ;
 int IoBuildDeviceIoControlRequest (int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 TYPE_1__* IoGetNextIrpStackLocation (int ) ;
 int IoGetRelatedDeviceObject (int ) ;
 int MIN_TRACE ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int TDI_DbgPrint (int ,char*) ;
 int TdiCall (int ,int ,TYPE_2__*,int ) ;

NTSTATUS TdiQueryDeviceControl(
    PFILE_OBJECT FileObject,
    ULONG IoControlCode,
    PVOID InputBuffer,
    ULONG InputBufferLength,
    PVOID OutputBuffer,
    ULONG OutputBufferLength,
    PULONG Return)
{
 PDEVICE_OBJECT DeviceObject;
 PIO_STACK_LOCATION IoStack;
 IO_STATUS_BLOCK Iosb;
 NTSTATUS Status;
 PIRP Irp;

 DeviceObject = IoGetRelatedDeviceObject(FileObject);
 Irp = IoBuildDeviceIoControlRequest(IoControlCode, DeviceObject, InputBuffer, InputBufferLength, OutputBuffer,
  OutputBufferLength, FALSE, ((void*)0), ((void*)0));

 if (!Irp)
  {
   TDI_DbgPrint(MIN_TRACE, ("IoBuildDeviceIoControlRequest() failed.\n"));
   return STATUS_INSUFFICIENT_RESOURCES;
  }

 IoStack = IoGetNextIrpStackLocation(Irp);
 IoStack->DeviceObject = DeviceObject;
 IoStack->FileObject = FileObject;
 Status = TdiCall(Irp, DeviceObject, &Iosb, FALSE);

 if (Return)
  *Return = Iosb.Information;

 return Status;
}
