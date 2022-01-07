
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {int RefCount; int SectionObject; } ;
typedef TYPE_1__* PNOCC_BCB ;


 int ASSERT (int ) ;
 int CcCacheBitmap ;
 TYPE_1__* CcCacheSections ;
 int RtlSetBit (int ,size_t) ;

VOID
CcpReferenceCache(ULONG Start)
{
    PNOCC_BCB Bcb;
    Bcb = &CcCacheSections[Start];
    ASSERT(Bcb->SectionObject);
    Bcb->RefCount++;
    RtlSetBit(CcCacheBitmap, Start);

}
