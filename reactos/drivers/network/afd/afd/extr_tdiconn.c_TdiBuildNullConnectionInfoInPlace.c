
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_4__ {int OptionsLength; scalar_t__ RemoteAddress; scalar_t__ RemoteAddressLength; } ;
typedef int TDI_CONNECTION_INFORMATION ;
typedef scalar_t__ PTRANSPORT_ADDRESS ;
typedef TYPE_1__* PTDI_CONNECTION_INFORMATION ;
typedef int NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int MIN_TRACE ;
 int RtlZeroMemory (TYPE_1__*,scalar_t__) ;
 int STATUS_INVALID_PARAMETER ;
 scalar_t__ TaLengthOfTransportAddressByType (scalar_t__) ;
 int TdiBuildNullTransportAddressInPlace (scalar_t__,scalar_t__) ;

NTSTATUS TdiBuildNullConnectionInfoInPlace
( PTDI_CONNECTION_INFORMATION ConnInfo,
  ULONG Type )
{
    ULONG TdiAddressSize;
    PTRANSPORT_ADDRESS TransportAddress;

    TdiAddressSize = TaLengthOfTransportAddressByType(Type);
    if (!TdiAddressSize)
    {
        AFD_DbgPrint(MIN_TRACE,("Invalid parameter\n"));
        return STATUS_INVALID_PARAMETER;
    }

    RtlZeroMemory(ConnInfo,
                  sizeof(TDI_CONNECTION_INFORMATION) +
                  TdiAddressSize);

    ConnInfo->OptionsLength = sizeof(ULONG);
    ConnInfo->RemoteAddressLength = TdiAddressSize;
    ConnInfo->RemoteAddress = TransportAddress =
        (PTRANSPORT_ADDRESS)&ConnInfo[1];

    return TdiBuildNullTransportAddressInPlace(TransportAddress, Type);
}
