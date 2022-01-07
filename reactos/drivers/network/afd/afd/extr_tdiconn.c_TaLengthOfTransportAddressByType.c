
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef scalar_t__ UINT ;


 int AFD_DbgPrint (int ,char*) ;
 int MID_TRACE ;
 scalar_t__ TdiAddressSizeFromType (scalar_t__) ;

UINT TaLengthOfTransportAddressByType(UINT AddressType)
{
    UINT AddrLen = TdiAddressSizeFromType(AddressType);

    if (!AddrLen)
        return 0;

    AddrLen += sizeof(ULONG) + 2 * sizeof(USHORT);

    AFD_DbgPrint(MID_TRACE,("AddrLen %x\n", AddrLen));

    return AddrLen;
}
