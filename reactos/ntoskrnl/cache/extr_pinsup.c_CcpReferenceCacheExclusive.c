
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {int ExclusiveWaiter; int Exclusive; int SectionObject; int ExclusiveWait; } ;
typedef TYPE_1__* PNOCC_BCB ;


 int ASSERT (int ) ;
 int CcCacheBitmap ;
 TYPE_1__* CcCacheSections ;
 int CcpLock () ;
 int CcpUnlock () ;
 int Executive ;
 int FALSE ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int RtlSetBit (int ,size_t) ;
 int TRUE ;

VOID
CcpReferenceCacheExclusive(ULONG Start)
{
    PNOCC_BCB Bcb = &CcCacheSections[Start];

    KeWaitForSingleObject(&Bcb->ExclusiveWait,
                          Executive,
                          KernelMode,
                          FALSE,
                          ((void*)0));

    CcpLock();
    ASSERT(Bcb->ExclusiveWaiter);
    ASSERT(Bcb->SectionObject);
    Bcb->Exclusive = TRUE;
    Bcb->ExclusiveWaiter--;
    RtlSetBit(CcCacheBitmap, Start);
    CcpUnlock();
}
