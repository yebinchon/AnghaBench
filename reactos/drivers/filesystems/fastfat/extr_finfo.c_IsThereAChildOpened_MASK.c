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
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {scalar_t__ OpenHandleCount; TYPE_2__ ParentListHead; int /*<<< orphan*/  RefCount; int /*<<< orphan*/  PathNameU; struct TYPE_8__* parentFcb; } ;
typedef  TYPE_1__* PVFATFCB ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ParentListEntry ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VFATFCB ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static
BOOLEAN
FUNC5(PVFATFCB FCB)
{
    PLIST_ENTRY Entry;
    PVFATFCB VolFCB;

    for (Entry = FCB->ParentListHead.Flink; Entry != &FCB->ParentListHead; Entry = Entry->Flink)
    {
        VolFCB = FUNC1(Entry, VFATFCB, ParentListEntry);
        if (VolFCB->OpenHandleCount != 0)
        {
            FUNC0(VolFCB->parentFcb == FCB);
            FUNC2("At least one children file opened! %wZ (%u, %u)\n", &VolFCB->PathNameU, VolFCB->RefCount, VolFCB->OpenHandleCount);
            return TRUE;
        }

        if (FUNC4(VolFCB) && !FUNC3(&VolFCB->ParentListHead))
        {
            if (FUNC5(VolFCB))
            {
                return TRUE;
            }
        }
    }

    return FALSE;
}