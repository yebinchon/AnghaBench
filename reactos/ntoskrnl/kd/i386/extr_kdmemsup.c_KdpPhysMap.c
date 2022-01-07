
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_6__ {int PageFrameNumber; } ;
struct TYPE_7__ {int Long; TYPE_1__ Hard; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef int PVOID ;
typedef TYPE_3__* PMMPTE ;
typedef TYPE_3__ MMPTE ;
typedef int LONG ;


 int KeInvalidateTlbEntry (int ) ;
 scalar_t__ MI_KDBG_TMP_PAGE_0 ;
 scalar_t__ MI_KDBG_TMP_PAGE_1 ;
 TYPE_3__* MiAddressToPte (int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PDE_ACCESSED_BIT ;
 int PDE_DIRTY_BIT ;
 int PDE_PCD_BIT ;
 int PDE_PRESENT_BIT ;
 int PDE_PWT_BIT ;
 int PDE_W_BIT ;

__attribute__((used)) static
ULONG_PTR
KdpPhysMap(ULONG_PTR PhysAddr, LONG Len)
{
    MMPTE TempPte;
    PMMPTE PointerPte;
    ULONG_PTR VirtAddr;

    TempPte.u.Long = PDE_PRESENT_BIT | PDE_W_BIT | PDE_PWT_BIT |
                     PDE_PCD_BIT | PDE_ACCESSED_BIT | PDE_DIRTY_BIT;

    if ((PhysAddr & (PAGE_SIZE - 1)) + Len > PAGE_SIZE)
    {
        TempPte.u.Hard.PageFrameNumber = (PhysAddr >> PAGE_SHIFT) + 1;
        PointerPte = MiAddressToPte((PVOID)MI_KDBG_TMP_PAGE_1);
        *PointerPte = TempPte;
        VirtAddr = (ULONG_PTR)PointerPte << 10;
        KeInvalidateTlbEntry((PVOID)VirtAddr);
    }

    TempPte.u.Hard.PageFrameNumber = PhysAddr >> PAGE_SHIFT;
    PointerPte = MiAddressToPte((PVOID)MI_KDBG_TMP_PAGE_0);
    *PointerPte = TempPte;
    VirtAddr = (ULONG_PTR)PointerPte << 10;
    KeInvalidateTlbEntry((PVOID)VirtAddr);

    return VirtAddr + (PhysAddr & (PAGE_SIZE - 1));
}
