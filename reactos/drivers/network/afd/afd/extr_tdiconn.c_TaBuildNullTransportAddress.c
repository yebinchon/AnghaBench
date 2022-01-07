
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * PTRANSPORT_ADDRESS ;


 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int NonPagedPool ;
 scalar_t__ STATUS_SUCCESS ;
 int TAG_AFD_TRANSPORT_ADDRESS ;
 int TaLengthOfTransportAddressByType (int ) ;
 scalar_t__ TdiBuildNullTransportAddressInPlace (int *,int ) ;

PTRANSPORT_ADDRESS TaBuildNullTransportAddress(UINT AddressType)
{
    UINT AddrLen;
    PTRANSPORT_ADDRESS A;

    AddrLen = TaLengthOfTransportAddressByType(AddressType);
    if (!AddrLen)
        return ((void*)0);

    A = ExAllocatePoolWithTag(NonPagedPool, AddrLen, TAG_AFD_TRANSPORT_ADDRESS);

    if (A)
    {
        if (TdiBuildNullTransportAddressInPlace(A, AddressType) != STATUS_SUCCESS)
        {
            ExFreePoolWithTag(A, TAG_AFD_TRANSPORT_ADDRESS);
            return ((void*)0);
        }
    }

    return A;
}
