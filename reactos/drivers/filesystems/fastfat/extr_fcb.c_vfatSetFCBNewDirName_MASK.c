#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ Buffer; } ;
typedef  TYPE_3__ UNICODE_STRING ;
struct TYPE_17__ {void* Hash; } ;
struct TYPE_16__ {void* Hash; } ;
struct TYPE_19__ {TYPE_3__ ShortNameU; TYPE_2__ ShortHash; TYPE_3__ DirNameU; TYPE_1__ Hash; TYPE_3__ PathNameU; int /*<<< orphan*/  LongNameU; scalar_t__ PathNameBuffer; } ;
typedef  TYPE_4__* PVFATFCB ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_FCB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 void* FUNC5 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC9(
    PDEVICE_EXTENSION pVCB,
    PVFATFCB Fcb,
    PVFATFCB ParentFcb)
{
    NTSTATUS Status;
    UNICODE_STRING NewNameU;

    /* Get full path name */
    Status = FUNC4(ParentFcb, &Fcb->LongNameU, &Fcb->ShortNameU, &NewNameU);
    if (!FUNC1(Status))
    {
        return Status;
    }

    /* Delete old name */
    if (Fcb->PathNameBuffer)
    {
        FUNC0(Fcb->PathNameBuffer, TAG_FCB);
    }
    Fcb->PathNameU = NewNameU;

    /* Delete from table */
    FUNC3(pVCB, Fcb);

    /* Split it properly */
    Fcb->PathNameBuffer = Fcb->PathNameU.Buffer;
    Fcb->DirNameU.Buffer = Fcb->PathNameU.Buffer;
    FUNC7(&Fcb->PathNameU, &Fcb->DirNameU, &Fcb->LongNameU);
    Fcb->Hash.Hash = FUNC5(0, &Fcb->PathNameU);
    if (FUNC8(pVCB))
    {
        Fcb->ShortHash.Hash = Fcb->Hash.Hash;
    }
    else
    {
        Fcb->ShortHash.Hash = FUNC5(0, &Fcb->DirNameU);
        Fcb->ShortHash.Hash = FUNC5(Fcb->ShortHash.Hash, &Fcb->ShortNameU);
    }

    FUNC2(pVCB, Fcb);
    FUNC6(pVCB, ParentFcb);

    return STATUS_SUCCESS;
}