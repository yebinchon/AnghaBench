
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_6__ {int Information; int Status; } ;
struct TYPE_7__ {TYPE_1__ IoStatus; } ;
typedef TYPE_2__* PVOID ;
typedef TYPE_2__* PIRP ;
typedef int NTSTATUS ;


 int DEBUG_IRP ;
 int IRPFinish (TYPE_2__*,int ) ;
 int MID_TRACE ;
 int TI_DbgPrint (int ,char*) ;

VOID DispDataRequestComplete(
    PVOID Context,
    NTSTATUS Status,
    ULONG Count)







{
    PIRP Irp = Context;

    TI_DbgPrint(DEBUG_IRP, ("Called for irp %x (%x, %d).\n",
       Irp, Status, Count));

    Irp->IoStatus.Status = Status;
    Irp->IoStatus.Information = Count;

    TI_DbgPrint(MID_TRACE, ("Irp->IoStatus.Status = %x\n",
       Irp->IoStatus.Status));
    TI_DbgPrint(MID_TRACE, ("Irp->IoStatus.Information = %d\n",
       Irp->IoStatus.Information));
    TI_DbgPrint(DEBUG_IRP, ("Completing IRP at (0x%X).\n", Irp));

    IRPFinish(Irp, Status);

    TI_DbgPrint(DEBUG_IRP, ("Done Completing IRP\n"));
}
