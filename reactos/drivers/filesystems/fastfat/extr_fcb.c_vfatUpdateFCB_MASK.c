#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ Buffer; } ;
struct TYPE_21__ {scalar_t__ Buffer; } ;
struct TYPE_20__ {int /*<<< orphan*/  ParentListEntry; int /*<<< orphan*/  ParentListHead; struct TYPE_20__* parentFcb; int /*<<< orphan*/  SectionObjectPointers; int /*<<< orphan*/  LongNameU; TYPE_7__ DirNameU; TYPE_6__ PathNameU; scalar_t__ PathNameBuffer; } ;
struct TYPE_19__ {int /*<<< orphan*/  ShortNameU; int /*<<< orphan*/  LongNameU; } ;
typedef  TYPE_1__* PVFAT_DIRENTRY_CONTEXT ;
typedef  TYPE_2__* PVFATFCB ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_FCB ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 

NTSTATUS
FUNC13(
    PDEVICE_EXTENSION pVCB,
    PVFATFCB Fcb,
    PVFAT_DIRENTRY_CONTEXT DirContext,
    PVFATFCB ParentFcb)
{
    NTSTATUS Status;
    PVFATFCB OldParent;

    FUNC1("vfatUpdateFCB(%p, %p, %p, %p)\n", pVCB, Fcb, DirContext, ParentFcb);

    /* Get full path name */
    Status = FUNC10(ParentFcb, &DirContext->LongNameU, &DirContext->ShortNameU, &Fcb->PathNameU);
    if (!FUNC4(Status))
    {
        return Status;
    }

    /* Delete old name */
    if (Fcb->PathNameBuffer)
    {
        FUNC2(Fcb->PathNameBuffer, TAG_FCB);
    }

    /* Delete from table */
    FUNC7(pVCB, Fcb);

    /* Split it properly */
    Fcb->PathNameBuffer = Fcb->PathNameU.Buffer;
    Fcb->DirNameU.Buffer = Fcb->PathNameU.Buffer;
    FUNC12(&Fcb->PathNameU, &Fcb->DirNameU, &Fcb->LongNameU);

    /* Save old parent */
    OldParent = Fcb->parentFcb;
    FUNC5(&Fcb->ParentListEntry);

    /* Reinit FCB */
    FUNC9(pVCB, Fcb, DirContext);

    if (FUNC8(Fcb))
    {
        FUNC0(&Fcb->SectionObjectPointers, NULL, 0, NULL);
    }
    Fcb->parentFcb = ParentFcb;
    FUNC3(&ParentFcb->ParentListHead, &Fcb->ParentListEntry);
    FUNC6(pVCB, Fcb);

    /* If we moved across directories, dereference our old parent
     * We also dereference in case we're just renaming since AddFCBToTable references it
     */
    FUNC11(pVCB, OldParent);

    return STATUS_SUCCESS;
}