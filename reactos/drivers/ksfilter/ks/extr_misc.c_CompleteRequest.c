
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ Status; } ;
struct TYPE_7__ {TYPE_1__ IoStatus; } ;
typedef TYPE_2__* PIRP ;
typedef int CCHAR ;


 int ASSERT (int) ;
 int DPRINT (char*,TYPE_2__*,scalar_t__) ;
 int IoCompleteRequest (TYPE_2__*,int ) ;
 scalar_t__ STATUS_PENDING ;

VOID
CompleteRequest(
    PIRP Irp,
    CCHAR PriorityBoost)
{
    DPRINT("Completing IRP %p Status %x\n", Irp, Irp->IoStatus.Status);

    ASSERT(Irp->IoStatus.Status != STATUS_PENDING);


    IoCompleteRequest(Irp, PriorityBoost);
}
