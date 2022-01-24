#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VFATFCB ;
struct TYPE_19__ {int /*<<< orphan*/  IsFastIoPossible; int /*<<< orphan*/ * Resource; int /*<<< orphan*/ * PagingIoResource; } ;
struct TYPE_18__ {TYPE_7__* self; } ;
struct TYPE_17__ {TYPE_7__* self; int /*<<< orphan*/  Hash; } ;
struct TYPE_15__ {int /*<<< orphan*/  Attrib; } ;
struct TYPE_14__ {int /*<<< orphan*/  Attrib; } ;
struct TYPE_16__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_20__ {int /*<<< orphan*/  ParentListHead; TYPE_6__ RFCB; int /*<<< orphan*/  MainResource; int /*<<< orphan*/  PagingIoResource; int /*<<< orphan*/  LastMutex; int /*<<< orphan*/  FileLock; TYPE_5__ ShortHash; TYPE_4__ Hash; int /*<<< orphan*/  PathNameU; TYPE_3__ entry; int /*<<< orphan*/ * Attributes; } ;
struct TYPE_13__ {int /*<<< orphan*/  FcbLookasideList; } ;
typedef  TYPE_7__* PVFATFCB ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FastIoIsNotPossible ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int) ; 
 TYPE_10__* VfatGlobalData ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

PVFATFCB
FUNC10(
    PDEVICE_EXTENSION pVCB,
    PUNICODE_STRING pFileNameU)
{
    PVFATFCB  rcFCB;

    FUNC0("'%wZ'\n", pFileNameU);

    rcFCB = FUNC1(&VfatGlobalData->FcbLookasideList);
    if (rcFCB == NULL)
    {
        return NULL;
    }
    FUNC6(rcFCB, sizeof(VFATFCB));
    FUNC7(rcFCB, pFileNameU);
    if (FUNC9(pVCB))
        rcFCB->Attributes = &rcFCB->entry.FatX.Attrib;
    else
        rcFCB->Attributes = &rcFCB->entry.Fat.Attrib;
    rcFCB->Hash.Hash = FUNC8(0, &rcFCB->PathNameU);
    rcFCB->Hash.self = rcFCB;
    rcFCB->ShortHash.self = rcFCB;
    FUNC3(&rcFCB->PagingIoResource);
    FUNC3(&rcFCB->MainResource);
    FUNC4(&rcFCB->FileLock, NULL, NULL);
    FUNC2(&rcFCB->LastMutex);
    rcFCB->RFCB.PagingIoResource = &rcFCB->PagingIoResource;
    rcFCB->RFCB.Resource = &rcFCB->MainResource;
    rcFCB->RFCB.IsFastIoPossible = FastIoIsNotPossible;
    FUNC5(&rcFCB->ParentListHead);

    return  rcFCB;
}