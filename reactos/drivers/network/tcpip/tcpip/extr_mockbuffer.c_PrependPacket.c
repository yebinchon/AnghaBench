
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef scalar_t__ PCHAR ;
typedef scalar_t__ NDIS_STATUS ;
typedef scalar_t__ BOOLEAN ;


 int GlobalBufferPool ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 int NdisAllocateBuffer (scalar_t__*,int *,int ,scalar_t__,int ) ;
 int NdisChainBufferAtFront (int ,int ) ;
 scalar_t__ PoolAllocateBuffer (int ) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int ) ;
 scalar_t__ STATUS_NO_MEMORY ;
 scalar_t__ STATUS_SUCCESS ;

NDIS_STATUS PrependPacket( PNDIS_PACKET Packet, PCHAR Data, UINT Length,
      BOOLEAN Copy ) {
    PNDIS_BUFFER Buffer;
    NDIS_STATUS Status;
    PCHAR NewBuf;

    if( Copy ) {
 NewBuf = PoolAllocateBuffer( Length );
 if( !NewBuf ) return STATUS_NO_MEMORY;
 RtlCopyMemory( NewBuf, Data, Length );
    } else NewBuf = Data;

    NdisAllocateBuffer( &Status, &Buffer, GlobalBufferPool, Data, Length );
    if( Status != NDIS_STATUS_SUCCESS ) return Status;

    NdisChainBufferAtFront( Packet, Buffer );

    return STATUS_SUCCESS;
}
