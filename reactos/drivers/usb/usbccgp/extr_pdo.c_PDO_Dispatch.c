
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int MajorFunction; } ;
struct TYPE_11__ {int Status; } ;
struct TYPE_12__ {TYPE_1__ IoStatus; } ;
typedef TYPE_2__* PIRP ;
typedef TYPE_3__* PIO_STACK_LOCATION ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int DPRINT1 (char*,int) ;
 int IO_NO_INCREMENT ;



 int IoCompleteRequest (TYPE_2__*,int ) ;
 TYPE_3__* IoGetCurrentIrpStackLocation (TYPE_2__*) ;
 int PDO_HandleInternalDeviceControl (int ,TYPE_2__*) ;
 int PDO_HandlePnp (int ,TYPE_2__*) ;
 int PoStartNextPowerIrp (TYPE_2__*) ;
 int STATUS_SUCCESS ;

NTSTATUS
PDO_Dispatch(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    NTSTATUS Status;


    IoStack = IoGetCurrentIrpStackLocation(Irp);

    switch(IoStack->MajorFunction)
    {
        case 129:
            return PDO_HandlePnp(DeviceObject, Irp);
        case 130:
            return PDO_HandleInternalDeviceControl(DeviceObject, Irp);
        case 128:
            PoStartNextPowerIrp(Irp);
            Irp->IoStatus.Status = STATUS_SUCCESS;
            IoCompleteRequest(Irp, IO_NO_INCREMENT);
            return STATUS_SUCCESS;
        default:
            DPRINT1("PDO_Dispatch Function %x not implemented\n", IoStack->MajorFunction);
            Status = Irp->IoStatus.Status;
            IoCompleteRequest(Irp, IO_NO_INCREMENT);
            return Status;
    }
}
