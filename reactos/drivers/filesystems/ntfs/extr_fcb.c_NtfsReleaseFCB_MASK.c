#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {scalar_t__ RefCount; int /*<<< orphan*/  FileObject; int /*<<< orphan*/  FcbListEntry; int /*<<< orphan*/  PathName; } ;
struct TYPE_8__ {int /*<<< orphan*/  FcbListLock; } ;
typedef  TYPE_1__* PNTFS_VCB ;
typedef  TYPE_2__* PNTFS_FCB ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

VOID
FUNC7(PNTFS_VCB Vcb,
               PNTFS_FCB Fcb)
{
    KIRQL oldIrql;

    FUNC1("releasing FCB at %p: %S, refCount:%d\n",
           Fcb,
           Fcb->PathName,
           Fcb->RefCount);

    FUNC2(&Vcb->FcbListLock, &oldIrql);
    Fcb->RefCount--;
    if (Fcb->RefCount <= 0 && !FUNC5(Fcb))
    {
        FUNC6(&Fcb->FcbListEntry);
        FUNC3(&Vcb->FcbListLock, oldIrql);
        FUNC0(Fcb->FileObject, NULL, NULL);
        FUNC4(Fcb);
    }
    else
    {
        FUNC3(&Vcb->FcbListLock, oldIrql);
    }
}