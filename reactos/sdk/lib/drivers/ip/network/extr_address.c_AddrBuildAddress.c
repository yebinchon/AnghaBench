
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ AddressType; scalar_t__ AddressLength; scalar_t__ Address; } ;
struct TYPE_6__ {int sin_port; int in_addr; } ;
struct TYPE_5__ {TYPE_3__* Address; } ;
typedef int * PUSHORT ;
typedef TYPE_1__* PTRANSPORT_ADDRESS ;
typedef TYPE_2__* PTDI_ADDRESS_IP ;
typedef TYPE_3__* PTA_ADDRESS ;
typedef int PIP_ADDRESS ;
typedef int NTSTATUS ;


 int AddrInitIPv4 (int ,int ) ;
 int MID_TRACE ;
 int STATUS_INVALID_ADDRESS ;
 int STATUS_SUCCESS ;
 scalar_t__ TDI_ADDRESS_LENGTH_IP ;
 scalar_t__ TDI_ADDRESS_TYPE_IP ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS AddrBuildAddress(
    PTRANSPORT_ADDRESS TaAddress,
    PIP_ADDRESS Address,
    PUSHORT Port)
{
  PTDI_ADDRESS_IP ValidAddr;
  PTA_ADDRESS TdiAddress = &TaAddress->Address[0];

  if (TdiAddress->AddressType != TDI_ADDRESS_TYPE_IP) {
      TI_DbgPrint
   (MID_TRACE,("AddressType %x, Not valid\n", TdiAddress->AddressType));
    return STATUS_INVALID_ADDRESS;
  }
  if (TdiAddress->AddressLength < TDI_ADDRESS_LENGTH_IP) {
      TI_DbgPrint
   (MID_TRACE,("AddressLength %x, Not valid (expected %x)\n",
        TdiAddress->AddressLength, TDI_ADDRESS_LENGTH_IP));
      return STATUS_INVALID_ADDRESS;
  }


  ValidAddr = (PTDI_ADDRESS_IP)TdiAddress->Address;

  AddrInitIPv4(Address, ValidAddr->in_addr);
  *Port = ValidAddr->sin_port;

  return STATUS_SUCCESS;
}
