
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_6__ {int Lock; TYPE_1__* Cache; } ;
struct TYPE_5__ {scalar_t__ Interface; struct TYPE_5__* Next; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef scalar_t__ PIP_INTERFACE ;
typedef int KIRQL ;


 int DISPATCH_LEVEL ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int KeLowerIrql (int ) ;
 int KeRaiseIrql (int ,int *) ;
 int NBFlushPacketQueue (TYPE_1__*,int ) ;
 size_t NB_HASHMASK ;
 int NCE_TAG ;
 int NDIS_STATUS_REQUEST_ABORTED ;
 TYPE_2__* NeighborCache ;
 int TcpipAcquireSpinLockAtDpcLevel (int *) ;
 int TcpipReleaseSpinLockFromDpcLevel (int *) ;

VOID NBDestroyNeighborsForInterface(PIP_INTERFACE Interface)
{
    KIRQL OldIrql;
    PNEIGHBOR_CACHE_ENTRY *PrevNCE;
    PNEIGHBOR_CACHE_ENTRY NCE;
    ULONG i;

    KeRaiseIrql(DISPATCH_LEVEL, &OldIrql);
    for (i = 0; i <= NB_HASHMASK; i++)
    {
        TcpipAcquireSpinLockAtDpcLevel(&NeighborCache[i].Lock);

        for (PrevNCE = &NeighborCache[i].Cache;
             (NCE = *PrevNCE) != ((void*)0);)
        {
            if (NCE->Interface == Interface)
            {

                *PrevNCE = NCE->Next;

                NBFlushPacketQueue(NCE, NDIS_STATUS_REQUEST_ABORTED);
                ExFreePoolWithTag(NCE, NCE_TAG);

                continue;
            }
            else
            {
                PrevNCE = &NCE->Next;
            }
        }

        TcpipReleaseSpinLockFromDpcLevel(&NeighborCache[i].Lock);
    }
    KeLowerIrql(OldIrql);
}
