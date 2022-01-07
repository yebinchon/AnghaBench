
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int Lock; TYPE_1__* Cache; } ;
struct TYPE_8__ {int Address; } ;
struct TYPE_7__ {struct TYPE_7__* Next; int Address; int * Interface; } ;
typedef int* PULONG ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef int * PIP_INTERFACE ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int KIRQL ;


 scalar_t__ AddrIsEqual (TYPE_2__*,int *) ;
 int DEBUG_NCACHE ;
 int * GetDefaultInterface () ;
 int MAX_TRACE ;
 int NB_HASHMASK ;
 TYPE_3__* NeighborCache ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PNEIGHBOR_CACHE_ENTRY NBLocateNeighbor(
  PIP_ADDRESS Address,
  PIP_INTERFACE Interface)
{
  PNEIGHBOR_CACHE_ENTRY NCE;
  UINT HashValue;
  KIRQL OldIrql;
  PIP_INTERFACE FirstInterface;

  TI_DbgPrint(DEBUG_NCACHE, ("Called. Address (0x%X).\n", Address));

  HashValue = *(PULONG)&Address->Address;
  HashValue ^= HashValue >> 16;
  HashValue ^= HashValue >> 8;
  HashValue ^= HashValue >> 4;
  HashValue &= NB_HASHMASK;

  TcpipAcquireSpinLock(&NeighborCache[HashValue].Lock, &OldIrql);



  if (Interface == ((void*)0))
  {
      FirstInterface = GetDefaultInterface();
      Interface = FirstInterface;
  }
  else
  {
      FirstInterface = ((void*)0);
  }

  do
  {
      NCE = NeighborCache[HashValue].Cache;
      while (NCE != ((void*)0))
      {
         if (NCE->Interface == Interface &&
             AddrIsEqual(Address, &NCE->Address))
         {
             break;
         }

         NCE = NCE->Next;
      }

      if (NCE != ((void*)0))
          break;
  }
  while ((FirstInterface != ((void*)0)) &&
         ((Interface = GetDefaultInterface()) != FirstInterface));

  if ((NCE == ((void*)0)) && (FirstInterface != ((void*)0)))
  {

      NCE = NeighborCache[HashValue].Cache;
      while (NCE != ((void*)0))
      {
         if (AddrIsEqual(Address, &NCE->Address))
         {
             break;
         }

         NCE = NCE->Next;
      }
  }

  TcpipReleaseSpinLock(&NeighborCache[HashValue].Lock, OldIrql);

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return NCE;
}
