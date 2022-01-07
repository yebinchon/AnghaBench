
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {char* Buffer; int MaximumLength; int Length; } ;
struct TYPE_10__ {int MTU; int Broadcast; int Netmask; int Unicast; TYPE_1__ Name; } ;
struct TYPE_9__ {int Transmit; scalar_t__ AddressLength; int * Address; scalar_t__ MinFrameSize; scalar_t__ HeaderSize; int * Context; } ;
typedef int PNDIS_STRING ;
typedef int PLAN_ADAPTER ;
typedef int NDIS_STATUS ;
typedef TYPE_2__ LLIP_BIND_INFO ;


 int AddrInitIPv4 (int *,int ) ;
 int IPAddInterfaceRoute (TYPE_3__*) ;
 TYPE_3__* IPCreateInterface (TYPE_2__*) ;
 int IPRegisterInterface (TYPE_3__*) ;
 int LOOPBACK_ADDRESS_IPv4 ;
 int LOOPBACK_ADDRMASK_IPv4 ;
 int LOOPBACK_BCASTADDR_IPv4 ;
 int LoopTransmit ;
 TYPE_3__* Loopback ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int NDIS_STATUS_RESOURCES ;
 int NDIS_STATUS_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;
 int wcslen (char*) ;

NDIS_STATUS LoopRegisterAdapter(
  PNDIS_STRING AdapterName,
  PLAN_ADAPTER *Adapter)
{
  LLIP_BIND_INFO BindInfo;

  TI_DbgPrint(MID_TRACE, ("Called.\n"));


  BindInfo.Context = ((void*)0);
  BindInfo.HeaderSize = 0;
  BindInfo.MinFrameSize = 0;
  BindInfo.Address = ((void*)0);
  BindInfo.AddressLength = 0;
  BindInfo.Transmit = LoopTransmit;

  Loopback = IPCreateInterface(&BindInfo);
  if (!Loopback) return NDIS_STATUS_RESOURCES;

  Loopback->MTU = 16384;

  Loopback->Name.Buffer = L"Loopback";
  Loopback->Name.MaximumLength = Loopback->Name.Length =
      wcslen(Loopback->Name.Buffer) * sizeof(WCHAR);

  AddrInitIPv4(&Loopback->Unicast, LOOPBACK_ADDRESS_IPv4);
  AddrInitIPv4(&Loopback->Netmask, LOOPBACK_ADDRMASK_IPv4);
  AddrInitIPv4(&Loopback->Broadcast, LOOPBACK_BCASTADDR_IPv4);

  IPRegisterInterface(Loopback);

  IPAddInterfaceRoute(Loopback);

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return NDIS_STATUS_SUCCESS;
}
