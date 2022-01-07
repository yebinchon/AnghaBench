
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NDIS_STATUS ;


 int GlobalBufferPool ;
 int GlobalPacketPool ;
 int NT_SUCCESS (int ) ;
 int NdisAllocateBufferPool (int *,int *,int) ;
 int NdisAllocatePacketPool (int *,int *,int,int ) ;
 int NdisFreePacketPool (int ) ;

NDIS_STATUS InitNdisPools() {
    NDIS_STATUS NdisStatus;

    NdisAllocatePacketPool( &NdisStatus, &GlobalPacketPool, 100, 0 );
    if( !NT_SUCCESS(NdisStatus) ) return NdisStatus;

    NdisAllocateBufferPool( &NdisStatus, &GlobalBufferPool, 100 );
    if( !NT_SUCCESS(NdisStatus) )
 NdisFreePacketPool(GlobalPacketPool);

    return NdisStatus;
}
