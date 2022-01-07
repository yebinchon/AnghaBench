
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PKSPIN_LOCK ;
typedef int PIPDATAGRAM_REASSEMBLY ;
typedef int KIRQL ;


 int FreeIPDR (int ) ;
 int MIN_TRACE ;
 int RemoveIPDR (int ) ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipReleaseSpinLock (int ,int ) ;

__inline VOID Cleanup(
  PKSPIN_LOCK Lock,
  KIRQL OldIrql,
  PIPDATAGRAM_REASSEMBLY IPDR)
{
  TI_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));

  TcpipReleaseSpinLock(Lock, OldIrql);
  RemoveIPDR(IPDR);
  FreeIPDR(IPDR);
}
