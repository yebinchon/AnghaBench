
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int SharedDelete; int SharedWrite; int SharedRead; int DeleteAccess; int WriteAccess; int ReadAccess; int FileName; } ;
struct TYPE_8__ {TYPE_5__* FileObject; } ;
struct TYPE_7__ {scalar_t__ CurrentIrp; TYPE_2__* CurrentIrpSp; } ;
typedef TYPE_1__* PRX_CONTEXT ;
typedef TYPE_2__* PIO_STACK_LOCATION ;


 int DbgP (char*,...) ;
 int print_file_object (int ,TYPE_5__*) ;
 int print_fo_all (int,TYPE_1__*) ;
 int print_irp_flags (int ,scalar_t__) ;
 int print_irps_flags (int ,TYPE_2__*) ;

void print_debug_header(
    PRX_CONTEXT RxContext)
{

    PIO_STACK_LOCATION IrpSp = RxContext->CurrentIrpSp;

    if (IrpSp) {
        DbgP("FileOject %p name %wZ access r=%d,w=%d,d=%d share r=%d,w=%d,d=%d\n",
            IrpSp->FileObject, &IrpSp->FileObject->FileName,
            IrpSp->FileObject->ReadAccess, IrpSp->FileObject->WriteAccess,
            IrpSp->FileObject->DeleteAccess, IrpSp->FileObject->SharedRead,
            IrpSp->FileObject->SharedWrite, IrpSp->FileObject->SharedDelete);
        print_file_object(0, IrpSp->FileObject);
        print_irps_flags(0, RxContext->CurrentIrpSp);
    } else
        DbgP("Couldn't print FileObject IrpSp is NULL\n");

    print_fo_all(1, RxContext);
    if (RxContext->CurrentIrp)
        print_irp_flags(0, RxContext->CurrentIrp);
}
