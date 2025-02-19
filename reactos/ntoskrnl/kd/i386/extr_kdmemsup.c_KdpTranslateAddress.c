
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int* PULONG_PTR ;
typedef int BOOLEAN ;


 int BIG_PAGE_SIZE ;
 int CR4_PAGE_SIZE_BIT ;
 int FALSE ;
 int KdpPhysRead (int,int) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PAGE_TABLE_MASK ;
 int PDE_PRESENT_BIT ;
 int PDE_PS_BIT ;
 int TRUE ;
 int __readcr3 () ;
 int __readcr4 () ;

__attribute__((used)) static
BOOLEAN
KdpTranslateAddress(ULONG_PTR Addr, PULONG_PTR ResultAddr)
{
    ULONG_PTR CR3Value = __readcr3();
    ULONG_PTR CR4Value = __readcr4();
    ULONG_PTR PageDirectory = (CR3Value & ~(PAGE_SIZE-1)) +
        ((Addr >> 22) * sizeof(ULONG));
    ULONG_PTR PageDirectoryEntry = KdpPhysRead(PageDirectory, sizeof(ULONG));


    if (!(PageDirectoryEntry & PDE_PRESENT_BIT))
    {
        return FALSE;
    }


    if ((PageDirectoryEntry & PDE_PS_BIT) && (CR4Value & CR4_PAGE_SIZE_BIT))
    {
        *ResultAddr = (PageDirectoryEntry & ~(BIG_PAGE_SIZE-1)) +
            (Addr & (BIG_PAGE_SIZE-1));
        return TRUE;
    }
    else
    {
        ULONG_PTR PageTableAddr =
            (PageDirectoryEntry & ~(PAGE_SIZE-1)) +
            ((Addr >> PAGE_SHIFT) & PAGE_TABLE_MASK) * sizeof(ULONG);
        ULONG_PTR PageTableEntry = KdpPhysRead(PageTableAddr, sizeof(ULONG));
        if (PageTableEntry & PDE_PRESENT_BIT)
        {
            *ResultAddr = (PageTableEntry & ~(PAGE_SIZE-1)) +
                (Addr & (PAGE_SIZE-1));
            return TRUE;
        }
    }

    return FALSE;
}
