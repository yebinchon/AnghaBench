
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int Lock; } ;
struct TYPE_6__ {int Address; } ;
struct TYPE_7__ {int State; scalar_t__ EventTimer; scalar_t__ EventCount; int LinkAddressLength; int LinkAddress; TYPE_1__ Address; } ;
typedef int PVOID ;
typedef int* PULONG ;
typedef TYPE_2__* PNEIGHBOR_CACHE_ENTRY ;
typedef int KIRQL ;


 scalar_t__ ARP_COMPLETE_TIMEOUT ;
 int DEBUG_NCACHE ;
 int NBSendPackets (TYPE_2__*) ;
 int NB_HASHMASK ;
 int NUD_INCOMPLETE ;
 TYPE_3__* NeighborCache ;
 int RtlCopyMemory (int ,int ,int ) ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

VOID NBUpdateNeighbor(
  PNEIGHBOR_CACHE_ENTRY NCE,
  PVOID LinkAddress,
  UCHAR State)
{
    KIRQL OldIrql;
    UINT HashValue;

    TI_DbgPrint(DEBUG_NCACHE, ("Called. NCE (0x%X)  LinkAddress (0x%X)  State (0x%X).\n", NCE, LinkAddress, State));

    HashValue = *(PULONG)(&NCE->Address.Address);
    HashValue ^= HashValue >> 16;
    HashValue ^= HashValue >> 8;
    HashValue ^= HashValue >> 4;
    HashValue &= NB_HASHMASK;

    TcpipAcquireSpinLock(&NeighborCache[HashValue].Lock, &OldIrql);

    RtlCopyMemory(NCE->LinkAddress, LinkAddress, NCE->LinkAddressLength);
    NCE->State = State;
    NCE->EventCount = 0;

    TcpipReleaseSpinLock(&NeighborCache[HashValue].Lock, OldIrql);

    if( !(NCE->State & NUD_INCOMPLETE) )
    {
        if (NCE->EventTimer) NCE->EventTimer = ARP_COMPLETE_TIMEOUT;
        NBSendPackets( NCE );
    }
}
