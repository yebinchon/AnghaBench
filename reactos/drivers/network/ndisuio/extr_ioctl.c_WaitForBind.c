
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Information; int Status; } ;
struct TYPE_6__ {TYPE_1__ IoStatus; } ;
typedef TYPE_2__* PIRP ;
typedef int PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 int DPRINT (char*) ;
 int IO_NO_INCREMENT ;
 int IoCompleteRequest (TYPE_2__*,int ) ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
WaitForBind(PIRP Irp, PIO_STACK_LOCATION IrpSp)
{




    DPRINT("Wait for bind complete\n");

    Irp->IoStatus.Status = STATUS_SUCCESS;
    Irp->IoStatus.Information = 0;

    IoCompleteRequest(Irp, IO_NO_INCREMENT);

    return STATUS_SUCCESS;
}
