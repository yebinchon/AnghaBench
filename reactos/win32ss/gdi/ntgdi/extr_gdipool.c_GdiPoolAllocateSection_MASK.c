#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {int cSlotsPerSection; int /*<<< orphan*/  ulTag; } ;
struct TYPE_7__ {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  aulBits; scalar_t__ cAllocCount; scalar_t__ ulCommitBitmap; int /*<<< orphan*/ * pvBaseAddress; } ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PGDI_POOL_SECTION ;
typedef  TYPE_2__* PGDI_POOL ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  GDI_POOL_SECTION ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int GDI_POOL_ALLOCATION_GRANULARITY ; 
 int /*<<< orphan*/  MEM_RESERVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
PGDI_POOL_SECTION
FUNC7(PGDI_POOL pPool)
{
    PGDI_POOL_SECTION pSection;
    PVOID pvBaseAddress;
    SIZE_T cjSize;
    NTSTATUS status;

    /* Allocate a section object */
    cjSize = sizeof(GDI_POOL_SECTION) + pPool->cSlotsPerSection / sizeof(ULONG);
    pSection = FUNC0(0, cjSize, pPool->ulTag);
    if (!pSection)
    {
        return NULL;
    }

    /* Reserve user mode memory */
    cjSize = GDI_POOL_ALLOCATION_GRANULARITY;
    pvBaseAddress = NULL;
    status = FUNC6(FUNC3(),
                                     &pvBaseAddress,
                                     0,
                                     &cjSize,
                                     MEM_RESERVE,
                                     PAGE_READWRITE);
    if (!FUNC2(status))
    {
        FUNC1(pSection);
        return NULL;
    }

    /* Initialize the section */
    pSection->pvBaseAddress = pvBaseAddress;
    pSection->ulCommitBitmap = 0;
    pSection->cAllocCount = 0;
    FUNC5(&pSection->bitmap,
                        pSection->aulBits,
                        pPool->cSlotsPerSection);
    FUNC4(&pSection->bitmap);

    /* Return the section */
    return pSection;
}