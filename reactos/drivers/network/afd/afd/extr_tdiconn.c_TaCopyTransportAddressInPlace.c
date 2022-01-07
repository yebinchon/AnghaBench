
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int PTRANSPORT_ADDRESS ;


 int RtlCopyMemory (int ,int ,int ) ;
 int TaLengthOfTransportAddress (int ) ;

VOID TaCopyTransportAddressInPlace( PTRANSPORT_ADDRESS Target,
                                    PTRANSPORT_ADDRESS Source ) {
    UINT AddrLen = TaLengthOfTransportAddress( Source );
    RtlCopyMemory( Target, Source, AddrLen );
}
