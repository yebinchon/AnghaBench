#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_11__ {int /*<<< orphan*/  RefCount; int /*<<< orphan*/  PathName; } ;
struct TYPE_10__ {int /*<<< orphan*/  FcbListLock; TYPE_4__ FcbListHead; TYPE_1__* StreamFileObject; } ;
struct TYPE_9__ {TYPE_3__* FsContext; } ;
typedef  TYPE_2__* PNTFS_VCB ;
typedef  TYPE_3__* PNTFS_FCB ;
typedef  TYPE_4__* PLIST_ENTRY ;
typedef  scalar_t__* PCWSTR ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FcbListEntry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTFS_FCB ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 

PNTFS_FCB
FUNC5(PNTFS_VCB Vcb,
                     PCWSTR FileName)
{
    KIRQL oldIrql;
    PNTFS_FCB Fcb;
    PLIST_ENTRY current_entry;

    FUNC2(&Vcb->FcbListLock, &oldIrql);

    if (FileName == NULL || *FileName == 0)
    {
        FUNC1("Return FCB for stream file object\n");
        Fcb = Vcb->StreamFileObject->FsContext;
        Fcb->RefCount++;
        FUNC3(&Vcb->FcbListLock, oldIrql);
        return Fcb;
    }

    current_entry = Vcb->FcbListHead.Flink;
    while (current_entry != &Vcb->FcbListHead)
    {
        Fcb = FUNC0(current_entry, NTFS_FCB, FcbListEntry);

        FUNC1("Comparing '%S' and '%S'\n", FileName, Fcb->PathName);
        if (FUNC4(FileName, Fcb->PathName) == 0)
        {
            Fcb->RefCount++;
            FUNC3(&Vcb->FcbListLock, oldIrql);
            return Fcb;
        }

        //FIXME: need to compare against short name in FCB here

        current_entry = current_entry->Flink;
    }

    FUNC3(&Vcb->FcbListLock, oldIrql);

    return NULL;
}