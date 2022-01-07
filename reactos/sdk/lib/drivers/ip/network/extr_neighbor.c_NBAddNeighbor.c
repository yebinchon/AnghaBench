
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
typedef void* UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int Lock; TYPE_1__* Cache; } ;
struct TYPE_8__ {int Address; } ;
struct TYPE_7__ {struct TYPE_7__* Next; int PacketQueue; scalar_t__ EventCount; void* EventTimer; int State; scalar_t__ LinkAddress; void* LinkAddressLength; TYPE_2__ Address; int Interface; } ;
typedef scalar_t__ PVOID ;
typedef int* PULONG ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef int PIP_INTERFACE ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int NEIGHBOR_CACHE_ENTRY ;
typedef int KIRQL ;


 int DEBUG_NCACHE ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int ,int ) ;
 int InitializeListHead (int *) ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NB_HASHMASK ;
 int NCE_TAG ;
 TYPE_3__* NeighborCache ;
 int NonPagedPool ;
 int RtlCopyMemory (scalar_t__,scalar_t__,void*) ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;
 int memset (scalar_t__,int,void*) ;

PNEIGHBOR_CACHE_ENTRY NBAddNeighbor(
  PIP_INTERFACE Interface,
  PIP_ADDRESS Address,
  PVOID LinkAddress,
  UINT LinkAddressLength,
  UCHAR State,
  UINT EventTimer)
{
  PNEIGHBOR_CACHE_ENTRY NCE;
  ULONG HashValue;
  KIRQL OldIrql;

  TI_DbgPrint
      (DEBUG_NCACHE,
       ("Called. Interface (0x%X)  Address (0x%X)  "
 "LinkAddress (0x%X)  LinkAddressLength (%d)  State (0x%X)\n",
 Interface, Address, LinkAddress, LinkAddressLength, State));

  NCE = ExAllocatePoolWithTag
      (NonPagedPool, sizeof(NEIGHBOR_CACHE_ENTRY) + LinkAddressLength,
       NCE_TAG);
  if (NCE == ((void*)0))
    {
      TI_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));
      return ((void*)0);
    }

  NCE->Interface = Interface;
  NCE->Address = *Address;
  NCE->LinkAddressLength = LinkAddressLength;
  NCE->LinkAddress = (PVOID)&NCE[1];
  if( LinkAddress )
      RtlCopyMemory(NCE->LinkAddress, LinkAddress, LinkAddressLength);
  else
      memset(NCE->LinkAddress, 0xff, LinkAddressLength);
  NCE->State = State;
  NCE->EventTimer = EventTimer;
  NCE->EventCount = 0;
  InitializeListHead( &NCE->PacketQueue );

  TI_DbgPrint(MID_TRACE,("NCE: %x\n", NCE));

  HashValue = *(PULONG)&Address->Address;
  HashValue ^= HashValue >> 16;
  HashValue ^= HashValue >> 8;
  HashValue ^= HashValue >> 4;
  HashValue &= NB_HASHMASK;

  TcpipAcquireSpinLock(&NeighborCache[HashValue].Lock, &OldIrql);

  NCE->Next = NeighborCache[HashValue].Cache;
  NeighborCache[HashValue].Cache = NCE;

  TcpipReleaseSpinLock(&NeighborCache[HashValue].Lock, OldIrql);

  return NCE;
}
