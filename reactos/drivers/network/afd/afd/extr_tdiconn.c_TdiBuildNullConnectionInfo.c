
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int TDI_CONNECTION_INFORMATION ;
typedef int * PTDI_CONNECTION_INFORMATION ;
typedef int NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 scalar_t__ ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int MIN_TRACE ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int TAG_AFD_TDI_CONNECTION_INFORMATION ;
 scalar_t__ TaLengthOfTransportAddressByType (scalar_t__) ;
 int TdiBuildNullConnectionInfoInPlace (int *,scalar_t__) ;

NTSTATUS TdiBuildNullConnectionInfo
( PTDI_CONNECTION_INFORMATION *ConnectionInfo,
  ULONG Type )
{
    PTDI_CONNECTION_INFORMATION ConnInfo;
    ULONG TdiAddressSize;
    NTSTATUS Status;

    TdiAddressSize = TaLengthOfTransportAddressByType(Type);
    if (!TdiAddressSize) {
        AFD_DbgPrint(MIN_TRACE,("Invalid parameter\n"));
        *ConnectionInfo = ((void*)0);
        return STATUS_INVALID_PARAMETER;
    }

    ConnInfo = (PTDI_CONNECTION_INFORMATION)
        ExAllocatePoolWithTag(NonPagedPool,
                              sizeof(TDI_CONNECTION_INFORMATION) + TdiAddressSize,
                              TAG_AFD_TDI_CONNECTION_INFORMATION);
    if (!ConnInfo) {
        *ConnectionInfo = ((void*)0);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = TdiBuildNullConnectionInfoInPlace( ConnInfo, Type );

    if (!NT_SUCCESS(Status))
    {
        ExFreePoolWithTag(ConnInfo, TAG_AFD_TDI_CONNECTION_INFORMATION);
        ConnInfo = ((void*)0);
    }

    *ConnectionInfo = ConnInfo;

    return Status;
}
