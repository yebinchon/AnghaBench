
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;
typedef scalar_t__ NDIS_STATUS ;


 int ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int ,int ) ;
 int FreeNdisPacket (int ) ;
 int GlobalBufferPool ;
 int GlobalPacketPool ;
 scalar_t__ NDIS_STATUS_RESOURCES ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 int NdisAllocateBuffer (scalar_t__*,int *,int ,int ,int ) ;
 int NdisAllocatePacket (scalar_t__*,int *,int ) ;
 int NdisChainBufferAtFront (int ,int ) ;
 int NonPagedPool ;
 int PACKET_BUFFER_TAG ;
 int RtlCopyMemory (int ,int ,int ) ;

NDIS_STATUS AllocatePacketWithBuffer( PNDIS_PACKET *NdisPacket,
          PCHAR Data, UINT Len ) {
    PNDIS_PACKET Packet;
    PNDIS_BUFFER Buffer;
    NDIS_STATUS Status;
    PCHAR NewData;

    NewData = ExAllocatePoolWithTag( NonPagedPool, Len, PACKET_BUFFER_TAG );
    if( !NewData ) return NDIS_STATUS_RESOURCES;

    if( Data ) RtlCopyMemory(NewData, Data, Len);

    NdisAllocatePacket( &Status, &Packet, GlobalPacketPool );
    if( Status != NDIS_STATUS_SUCCESS ) {
 ExFreePoolWithTag( NewData, PACKET_BUFFER_TAG );
 return Status;
    }

    NdisAllocateBuffer( &Status, &Buffer, GlobalBufferPool, NewData, Len );
    if( Status != NDIS_STATUS_SUCCESS ) {
 ExFreePoolWithTag( NewData, PACKET_BUFFER_TAG );
 FreeNdisPacket( Packet );
 return Status;
    }

    NdisChainBufferAtFront( Packet, Buffer );
    *NdisPacket = Packet;

    return NDIS_STATUS_SUCCESS;
}
