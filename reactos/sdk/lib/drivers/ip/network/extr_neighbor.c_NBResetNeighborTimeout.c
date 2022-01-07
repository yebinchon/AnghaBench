
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_9__ {int Lock; TYPE_1__* Cache; } ;
struct TYPE_8__ {int Address; } ;
struct TYPE_7__ {scalar_t__ EventCount; int Address; struct TYPE_7__* Next; } ;
typedef int* PULONG ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int KIRQL ;


 int A2S (TYPE_2__*) ;
 scalar_t__ AddrIsEqual (TYPE_2__*,int *) ;
 int DEBUG_NCACHE ;
 int NB_HASHMASK ;
 TYPE_3__* NeighborCache ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

VOID
NBResetNeighborTimeout(PIP_ADDRESS Address)
{
    KIRQL OldIrql;
    UINT HashValue;
    PNEIGHBOR_CACHE_ENTRY NCE;

    TI_DbgPrint(DEBUG_NCACHE, ("Resetting NCE timout for 0x%s\n", A2S(Address)));

    HashValue = *(PULONG)(&Address->Address);
    HashValue ^= HashValue >> 16;
    HashValue ^= HashValue >> 8;
    HashValue ^= HashValue >> 4;
    HashValue &= NB_HASHMASK;

    TcpipAcquireSpinLock(&NeighborCache[HashValue].Lock, &OldIrql);

    for (NCE = NeighborCache[HashValue].Cache;
         NCE != ((void*)0);
         NCE = NCE->Next)
    {
         if (AddrIsEqual(Address, &NCE->Address))
         {
             NCE->EventCount = 0;
             break;
         }
    }

    TcpipReleaseSpinLock(&NeighborCache[HashValue].Lock, OldIrql);
}
