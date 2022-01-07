
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int ListEntry; } ;
typedef TYPE_1__* PIPDATAGRAM_REASSEMBLY ;
typedef int KIRQL ;


 int DEBUG_IP ;
 int ReassemblyListLock ;
 int RemoveEntryList (int *) ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

VOID RemoveIPDR(
  PIPDATAGRAM_REASSEMBLY IPDR)





{
  KIRQL OldIrql;

  TI_DbgPrint(DEBUG_IP, ("Removing IPDR at (0x%X).\n", IPDR));

  TcpipAcquireSpinLock(&ReassemblyListLock, &OldIrql);
  RemoveEntryList(&IPDR->ListEntry);
  TcpipReleaseSpinLock(&ReassemblyListLock, OldIrql);
}
