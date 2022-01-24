#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int /*<<< orphan*/ ** DriverContext; } ;
struct TYPE_6__ {TYPE_1__ Overlay; } ;
struct TYPE_7__ {int /*<<< orphan*/ * MdlAddress; TYPE_2__ Tail; } ;
typedef  TYPE_3__* PIRP ;
typedef  int /*<<< orphan*/  PIO_STACK_LOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_AFD_DATA_BUFFER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

VOID FUNC7( PIRP Irp, PIO_STACK_LOCATION IrpSp )
{
    FUNC0(Irp->MdlAddress);
    FUNC0(Irp->Tail.Overlay.DriverContext[0]);

    FUNC6(IrpSp);

    /* Check if we need to copy stuff back */
    if (Irp->Tail.Overlay.DriverContext[1] != NULL)
    {
        FUNC5(Irp->Tail.Overlay.DriverContext[1],
                      Irp->Tail.Overlay.DriverContext[0],
                      FUNC3(Irp->MdlAddress));
    }

    FUNC1(Irp->Tail.Overlay.DriverContext[0], TAG_AFD_DATA_BUFFER);
    FUNC4( Irp->MdlAddress );
    FUNC2( Irp->MdlAddress );
    Irp->MdlAddress = NULL;
}