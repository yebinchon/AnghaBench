#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Inode; } ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;
typedef  TYPE_1__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOLEAN
FUNC3 (
    PEXT2_IRP_CONTEXT   IrpContext,
    PEXT2_VCB           Vcb,
    PEXT2_MCB           Mcb
)
{
    if (!FUNC0(Mcb) || FUNC1(Mcb)) {
        return TRUE;
    }

    return !!FUNC2(IrpContext, &Mcb->Inode);
}