
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int PIP_PACKET ;


 int ExFreePool (int ) ;
 int IPReceive (int ,int ) ;
 int Loopback ;

VOID LoopPassiveWorker(
  PVOID Context)
{
  PIP_PACKET IPPacket = Context;


  IPReceive(Loopback, IPPacket);

  ExFreePool(IPPacket);
}
