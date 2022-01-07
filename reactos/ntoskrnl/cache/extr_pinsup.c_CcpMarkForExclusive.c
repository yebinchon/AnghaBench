
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {int ExclusiveWaiter; } ;
typedef TYPE_1__* PNOCC_BCB ;


 TYPE_1__* CcCacheSections ;

VOID
CcpMarkForExclusive(ULONG Start)
{
    PNOCC_BCB Bcb;
    Bcb = &CcCacheSections[Start];
    Bcb->ExclusiveWaiter++;
}
