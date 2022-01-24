#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_11__ {int /*<<< orphan*/ * Buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  FcbLookasideList; } ;
struct TYPE_9__ {int /*<<< orphan*/  ParentListHead; int /*<<< orphan*/  MainResource; int /*<<< orphan*/  PagingIoResource; int /*<<< orphan*/  PathNameBuffer; int /*<<< orphan*/  ParentListEntry; int /*<<< orphan*/  Flags; int /*<<< orphan*/  FileLock; int /*<<< orphan*/  RefCount; int /*<<< orphan*/  PathNameU; int /*<<< orphan*/  LongNameU; } ;
typedef  TYPE_1__* PVFATFCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ DebugFile ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FCB_IS_FAT ; 
 int /*<<< orphan*/  FCB_IS_VOLUME ; 
 scalar_t__ FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_4__* VfatGlobalData ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

VOID
FUNC11(
    PVFATFCB pFCB)
{
#ifdef KDBG
    if (DebugFile.Buffer != NULL && FsRtlIsNameInExpression(&DebugFile, &pFCB->LongNameU, FALSE, NULL))
    {
        DPRINT1("Destroying: %p (%wZ) %d\n", pFCB, &pFCB->PathNameU, pFCB->RefCount);
    }
#endif

    FUNC7(&pFCB->FileLock);

    if (!FUNC10(pFCB) &&
        !FUNC1(pFCB->Flags, FCB_IS_FAT) && !FUNC1(pFCB->Flags, FCB_IS_VOLUME))
    {
        FUNC9(&pFCB->ParentListEntry);
    }
    FUNC4(pFCB->PathNameBuffer);
    FUNC3(&pFCB->PagingIoResource);
    FUNC3(&pFCB->MainResource);
    FUNC0(FUNC8(&pFCB->ParentListHead));
    FUNC5(&VfatGlobalData->FcbLookasideList, pFCB);
}