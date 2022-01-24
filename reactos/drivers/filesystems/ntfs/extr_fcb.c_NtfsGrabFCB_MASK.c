#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int /*<<< orphan*/  RefCount; int /*<<< orphan*/  PathName; } ;
struct TYPE_6__ {int /*<<< orphan*/  FcbListLock; } ;
typedef  TYPE_1__* PNTFS_VCB ;
typedef  TYPE_2__* PNTFS_FCB ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

VOID
FUNC3(PNTFS_VCB Vcb,
            PNTFS_FCB Fcb)
{
    KIRQL oldIrql;

    FUNC0("grabbing FCB at %p: %S, refCount:%d\n",
           Fcb,
           Fcb->PathName,
           Fcb->RefCount);

    FUNC1(&Vcb->FcbListLock, &oldIrql);
    Fcb->RefCount++;
    FUNC2(&Vcb->FcbListLock, oldIrql);
}