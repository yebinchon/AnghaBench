
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int TAAddressCount; TYPE_1__* Address; } ;
struct TYPE_4__ {int AddressLength; int Address; int AddressType; } ;
typedef TYPE_2__* PTRANSPORT_ADDRESS ;
typedef int NTSTATUS ;


 int RtlZeroMemory (int ,int ) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int TdiAddressSizeFromType (int ) ;

NTSTATUS TdiBuildNullTransportAddressInPlace(PTRANSPORT_ADDRESS A, UINT AddressType)
{
    A->TAAddressCount = 1;

    A->Address[0].AddressLength = TdiAddressSizeFromType(AddressType);
    if (!A->Address[0].AddressLength)
        return STATUS_INVALID_PARAMETER;

    A->Address[0].AddressType = AddressType;

    RtlZeroMemory(A->Address[0].Address, A->Address[0].AddressLength);

    return STATUS_SUCCESS;
}
