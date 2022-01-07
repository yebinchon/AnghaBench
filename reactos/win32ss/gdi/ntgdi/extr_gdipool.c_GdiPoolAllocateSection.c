
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {int cSlotsPerSection; int ulTag; } ;
struct TYPE_7__ {int bitmap; int aulBits; scalar_t__ cAllocCount; scalar_t__ ulCommitBitmap; int * pvBaseAddress; } ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef TYPE_1__* PGDI_POOL_SECTION ;
typedef TYPE_2__* PGDI_POOL ;
typedef int NTSTATUS ;
typedef int GDI_POOL_SECTION ;


 TYPE_1__* EngAllocMem (int ,int,int ) ;
 int EngFreeMem (TYPE_1__*) ;
 int GDI_POOL_ALLOCATION_GRANULARITY ;
 int MEM_RESERVE ;
 int NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int PAGE_READWRITE ;
 int RtlClearAllBits (int *) ;
 int RtlInitializeBitMap (int *,int ,int) ;
 int ZwAllocateVirtualMemory (int ,int **,int ,int*,int ,int ) ;

__attribute__((used)) static
PGDI_POOL_SECTION
GdiPoolAllocateSection(PGDI_POOL pPool)
{
    PGDI_POOL_SECTION pSection;
    PVOID pvBaseAddress;
    SIZE_T cjSize;
    NTSTATUS status;


    cjSize = sizeof(GDI_POOL_SECTION) + pPool->cSlotsPerSection / sizeof(ULONG);
    pSection = EngAllocMem(0, cjSize, pPool->ulTag);
    if (!pSection)
    {
        return ((void*)0);
    }


    cjSize = GDI_POOL_ALLOCATION_GRANULARITY;
    pvBaseAddress = ((void*)0);
    status = ZwAllocateVirtualMemory(NtCurrentProcess(),
                                     &pvBaseAddress,
                                     0,
                                     &cjSize,
                                     MEM_RESERVE,
                                     PAGE_READWRITE);
    if (!NT_SUCCESS(status))
    {
        EngFreeMem(pSection);
        return ((void*)0);
    }


    pSection->pvBaseAddress = pvBaseAddress;
    pSection->ulCommitBitmap = 0;
    pSection->cAllocCount = 0;
    RtlInitializeBitMap(&pSection->bitmap,
                        pSection->aulBits,
                        pPool->cSlotsPerSection);
    RtlClearAllBits(&pSection->bitmap);


    return pSection;
}
