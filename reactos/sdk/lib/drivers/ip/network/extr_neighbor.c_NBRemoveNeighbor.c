
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_9__ {int Lock; TYPE_2__* Cache; } ;
struct TYPE_7__ {int Address; } ;
struct TYPE_8__ {struct TYPE_8__* Next; TYPE_1__ Address; } ;
typedef int* PULONG ;
typedef TYPE_2__* PNEIGHBOR_CACHE_ENTRY ;
typedef int KIRQL ;


 int DEBUG_NCACHE ;
 int ExFreePoolWithTag (TYPE_2__*,int ) ;
 int NBFlushPacketQueue (TYPE_2__*,int ) ;
 int NB_HASHMASK ;
 int NCE_TAG ;
 int NDIS_STATUS_REQUEST_ABORTED ;
 TYPE_3__* NeighborCache ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

VOID NBRemoveNeighbor(
  PNEIGHBOR_CACHE_ENTRY NCE)







{
  PNEIGHBOR_CACHE_ENTRY *PrevNCE;
  PNEIGHBOR_CACHE_ENTRY CurNCE;
  ULONG HashValue;
  KIRQL OldIrql;

  TI_DbgPrint(DEBUG_NCACHE, ("Called. NCE (0x%X).\n", NCE));

  HashValue = *(PULONG)(&NCE->Address.Address);
  HashValue ^= HashValue >> 16;
  HashValue ^= HashValue >> 8;
  HashValue ^= HashValue >> 4;
  HashValue &= NB_HASHMASK;

  TcpipAcquireSpinLock(&NeighborCache[HashValue].Lock, &OldIrql);


  for (PrevNCE = &NeighborCache[HashValue].Cache;
    (CurNCE = *PrevNCE) != ((void*)0);
    PrevNCE = &CurNCE->Next)
    {
      if (CurNCE == NCE)
        {

          *PrevNCE = CurNCE->Next;

   NBFlushPacketQueue( CurNCE, NDIS_STATUS_REQUEST_ABORTED );
          ExFreePoolWithTag(CurNCE, NCE_TAG);

   break;
        }
    }

  TcpipReleaseSpinLock(&NeighborCache[HashValue].Lock, OldIrql);
}
