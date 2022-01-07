
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int Type; } ;
struct TYPE_10__ {int AddressType; int Address; int AddressLength; } ;
struct TYPE_9__ {int in_addr; int sin_port; } ;
struct TYPE_8__ {scalar_t__ TAAddressCount; TYPE_3__* Address; } ;
typedef int * PUSHORT ;
typedef TYPE_1__* PTRANSPORT_ADDRESS ;
typedef TYPE_2__* PTDI_ADDRESS_IP ;
typedef TYPE_3__* PTA_ADDRESS ;
typedef TYPE_4__* PIP_ADDRESS ;
typedef int NTSTATUS ;
typedef scalar_t__ INT ;


 int AddrInitIPv4 (TYPE_4__*,int ) ;
 int STATUS_INVALID_ADDRESS ;
 int STATUS_SUCCESS ;
 int TDI_ADDRESS_LENGTH_IP ;


NTSTATUS AddrGetAddress(
    PTRANSPORT_ADDRESS AddrList,
    PIP_ADDRESS Address,
    PUSHORT Port)
{
    PTA_ADDRESS CurAddr;
    INT i;


    CurAddr = AddrList->Address;

    for (i = 0; i < AddrList->TAAddressCount; i++) {
        switch (CurAddr->AddressType) {
        case 128:
            if (CurAddr->AddressLength >= TDI_ADDRESS_LENGTH_IP) {

                PTDI_ADDRESS_IP ValidAddr = (PTDI_ADDRESS_IP)CurAddr->Address;
                *Port = ValidAddr->sin_port;
  Address->Type = CurAddr->AddressType;
  ValidAddr = (PTDI_ADDRESS_IP)CurAddr->Address;
  AddrInitIPv4(Address, ValidAddr->in_addr);
  return STATUS_SUCCESS;
     }
 }
    }

    return STATUS_INVALID_ADDRESS;
}
