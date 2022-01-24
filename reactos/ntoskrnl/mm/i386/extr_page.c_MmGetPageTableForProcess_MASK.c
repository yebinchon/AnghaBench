#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_14__ {int /*<<< orphan*/ * DirectoryTableBase; } ;
struct TYPE_18__ {TYPE_1__ Pcb; } ;
struct TYPE_15__ {int Valid; int /*<<< orphan*/  PageFrameNumber; } ;
struct TYPE_16__ {scalar_t__ Long; TYPE_2__ Hard; } ;
struct TYPE_17__ {TYPE_3__ u; } ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_4__* PMMPDE ;
typedef  int /*<<< orphan*/  PFN_NUMBER ;
typedef  TYPE_5__* PEPROCESS ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DemandZeroPde ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMORY_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 scalar_t__ MmSystemRangeStart ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC15 () ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static PULONG
FUNC16(PEPROCESS Process, PVOID Address, BOOLEAN Create)
{
    PFN_NUMBER Pfn;
    PULONG Pt;
    PMMPDE PointerPde;

    if (Address < MmSystemRangeStart)
    {
        /* We should have a process for user land addresses */
        FUNC0(Process != NULL);

        if(Process != FUNC15())
        {
            PMMPDE PdeBase;
            ULONG PdeOffset = FUNC10(Address);

            /* Nobody but page fault should ask for creating the PDE,
             * Which imples that Process is the current one */
            FUNC0(Create == FALSE);

            PdeBase = FUNC12(FUNC14(Process->Pcb.DirectoryTableBase[0]));
            if (PdeBase == NULL)
            {
                FUNC3(MEMORY_MANAGEMENT);
            }
            PointerPde = PdeBase + PdeOffset;
            if (PointerPde->u.Hard.Valid == 0)
            {
                FUNC13(PdeBase);
                return NULL;
            }
            else
            {
                Pfn = PointerPde->u.Hard.PageFrameNumber;
            }
            FUNC13(PdeBase);
            Pt = FUNC12(Pfn);
            if (Pt == NULL)
            {
                FUNC3(MEMORY_MANAGEMENT);
            }
            return Pt + FUNC7(Address);
        }
        /* This is for our process */
        PointerPde = FUNC5(Address);
        Pt = (PULONG)FUNC6(Address);
        if (PointerPde->u.Hard.Valid == 0)
        {
            NTSTATUS Status;
            if (Create == FALSE)
            {
                return NULL;
            }
            FUNC0(PointerPde->u.Long == 0);

            FUNC4(PointerPde, DemandZeroPde);
            // Tiny HACK: Parameter 1 is the architecture specific FaultCode for an access violation (i.e. page is present)
            Status = FUNC8(0x1,
                                     Pt,
                                     PointerPde,
                                     NULL,
                                     FALSE,
                                     FUNC15(),
                                     NULL,
                                     NULL);
            FUNC1(Status);
            FUNC0(FUNC2() == TRUE);
            FUNC0(PointerPde->u.Hard.Valid == 1);
        }
        return (PULONG)FUNC6(Address);
    }

    /* This is for kernel land address */
    FUNC0(Process == NULL);
    PointerPde = FUNC5(Address);
    Pt = (PULONG)FUNC6(Address);
    if (PointerPde->u.Hard.Valid == 0)
    {
        /* Let ARM3 synchronize the PDE */
        if(!FUNC11(PointerPde))
        {
            /* PDE (still) not valid, let ARM3 allocate one if asked */
            if(Create == FALSE)
                return NULL;
            FUNC9(Address, PAGE_SIZE);
        }
    }
    return Pt;
}