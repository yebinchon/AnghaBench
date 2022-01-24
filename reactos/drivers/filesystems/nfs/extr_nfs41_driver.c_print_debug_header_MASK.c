#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  SharedDelete; int /*<<< orphan*/  SharedWrite; int /*<<< orphan*/  SharedRead; int /*<<< orphan*/  DeleteAccess; int /*<<< orphan*/  WriteAccess; int /*<<< orphan*/  ReadAccess; int /*<<< orphan*/  FileName; } ;
struct TYPE_8__ {TYPE_5__* FileObject; } ;
struct TYPE_7__ {scalar_t__ CurrentIrp; TYPE_2__* CurrentIrpSp; } ;
typedef  TYPE_1__* PRX_CONTEXT ;
typedef  TYPE_2__* PIO_STACK_LOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC5(
    PRX_CONTEXT RxContext)
{

    PIO_STACK_LOCATION IrpSp = RxContext->CurrentIrpSp;

    if (IrpSp) {
        FUNC0("FileOject %p name %wZ access r=%d,w=%d,d=%d share r=%d,w=%d,d=%d\n",
            IrpSp->FileObject, &IrpSp->FileObject->FileName,
            IrpSp->FileObject->ReadAccess, IrpSp->FileObject->WriteAccess,
            IrpSp->FileObject->DeleteAccess, IrpSp->FileObject->SharedRead,
            IrpSp->FileObject->SharedWrite, IrpSp->FileObject->SharedDelete);
        FUNC1(0, IrpSp->FileObject);
        FUNC4(0, RxContext->CurrentIrpSp);
    } else
        FUNC0("Couldn't print FileObject IrpSp is NULL\n");

    FUNC2(1, RxContext);
    if (RxContext->CurrentIrp)
        FUNC3(0, RxContext->CurrentIrp);
}