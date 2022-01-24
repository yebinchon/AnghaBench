#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int /*<<< orphan*/  Next; int /*<<< orphan*/  TsDrop; } ;
struct TYPE_5__ {int /*<<< orphan*/  FcbList; int /*<<< orphan*/  ReferenceCount; int /*<<< orphan*/  FcbCount; int /*<<< orphan*/  FcbLock; } ;
typedef  TYPE_1__* PEXT2_VCB ;
typedef  TYPE_2__* PEXT2_FCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

VOID
FUNC5(PEXT2_VCB Vcb, PEXT2_FCB Fcb)
{
    FUNC0(FUNC1(&Vcb->FcbLock));

    FUNC4(&Fcb->TsDrop);
    FUNC2(&Vcb->FcbCount);
    FUNC2(&Vcb->ReferenceCount);
    FUNC3(&Vcb->FcbList, &Fcb->Next);
}