
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * PTRANSPORT_ADDRESS ;


 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int NonPagedPool ;
 int TAG_AFD_TRANSPORT_ADDRESS ;
 int TaCopyTransportAddressInPlace (int *,int *) ;
 int TaLengthOfTransportAddress (int *) ;

PTRANSPORT_ADDRESS TaCopyTransportAddress( PTRANSPORT_ADDRESS OtherAddress ) {
    UINT AddrLen;
    PTRANSPORT_ADDRESS A;

    AddrLen = TaLengthOfTransportAddress( OtherAddress );
    if (!AddrLen)
        return ((void*)0);

    A = ExAllocatePoolWithTag(NonPagedPool,
                              AddrLen,
                              TAG_AFD_TRANSPORT_ADDRESS);

    if( A )
        TaCopyTransportAddressInPlace( A, OtherAddress );

    return A;
}
