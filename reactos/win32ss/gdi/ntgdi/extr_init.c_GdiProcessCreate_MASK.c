#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* Peb; } ;
struct TYPE_10__ {struct TYPE_10__* pPoolRgnAttr; struct TYPE_10__* pPoolBrushAttr; struct TYPE_10__* pPoolDcAttr; int /*<<< orphan*/  GDIDcAttrFreeList; int /*<<< orphan*/  GDIBrushAttrFreeList; int /*<<< orphan*/  PrivateFontListLock; scalar_t__ PrivateMemFontHandleCount; int /*<<< orphan*/  PrivateMemFontListHead; int /*<<< orphan*/  PrivateFontListHead; } ;
struct TYPE_9__ {int /*<<< orphan*/  GdiDCAttributeList; int /*<<< orphan*/  GdiSharedHandleTable; } ;
typedef  int /*<<< orphan*/  RGN_ATTR ;
typedef  TYPE_2__* PPROCESSINFO ;
typedef  TYPE_3__* PEPROCESS ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DC_ATTR ;
typedef  int /*<<< orphan*/  BRUSH_ATTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GDI_BATCH_LIMIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 void* FUNC3 (int,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC6(PEPROCESS Process)
{
    PPROCESSINFO ppiCurrent = FUNC5(Process);
    FUNC0(ppiCurrent);

    FUNC4(&ppiCurrent->PrivateFontListHead);
    FUNC4(&ppiCurrent->PrivateMemFontListHead);
    ppiCurrent->PrivateMemFontHandleCount = 0;
    FUNC1(&ppiCurrent->PrivateFontListLock);

    FUNC4(&ppiCurrent->GDIBrushAttrFreeList);
    FUNC4(&ppiCurrent->GDIDcAttrFreeList);

    /* Map the GDI handle table to user land */
    Process->Peb->GdiSharedHandleTable = FUNC2(Process);
    Process->Peb->GdiDCAttributeList = GDI_BATCH_LIMIT;

    /* Create pools for GDI object attributes */
    ppiCurrent->pPoolDcAttr = FUNC3(sizeof(DC_ATTR), 'acdG');
    ppiCurrent->pPoolBrushAttr = FUNC3(sizeof(BRUSH_ATTR), 'arbG');
    ppiCurrent->pPoolRgnAttr = FUNC3(sizeof(RGN_ATTR), 'agrG');
    FUNC0(ppiCurrent->pPoolDcAttr);
    FUNC0(ppiCurrent->pPoolBrushAttr);
    FUNC0(ppiCurrent->pPoolRgnAttr);

    return STATUS_SUCCESS;
}