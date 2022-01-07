
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;
typedef scalar_t__ NDIS_STATUS ;


 int FreeNdisPacket (int ) ;
 int GlobalBufferPool ;
 int GlobalPacketPool ;
 int NDIS_BUFFER_TAG ;
 int NDIS_PACKET_TAG ;
 scalar_t__ NDIS_STATUS_NOT_ACCEPTED ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 int NdisAllocateBuffer (scalar_t__*,int *,int ,int ,int ) ;
 int NdisAllocatePacket (scalar_t__*,int *,int ) ;
 int NdisChainBufferAtFront (int ,int ) ;
 int NonPagedPool ;
 int RtlCopyMemory (int ,int ,int ) ;
 int TrackWithTag (int ,int ,int ,int ) ;
 int exAllocatePool (int ,int ) ;
 int exFreePool (int ) ;

NDIS_STATUS AllocatePacketWithBufferX( PNDIS_PACKET *NdisPacket,
           PCHAR Data, UINT Len,
           PCHAR File, UINT Line ) {
    PNDIS_PACKET Packet;
    PNDIS_BUFFER Buffer;
    NDIS_STATUS Status;
    PCHAR NewData;

    NewData = exAllocatePool( NonPagedPool, Len );
    if( !NewData ) return NDIS_STATUS_NOT_ACCEPTED;

    if( Data )
 RtlCopyMemory(NewData, Data, Len);

    NdisAllocatePacket( &Status, &Packet, GlobalPacketPool );
    if( Status != NDIS_STATUS_SUCCESS ) {
 exFreePool( NewData );
 return Status;
    }
    TrackWithTag(NDIS_PACKET_TAG, Packet, File, Line);

    NdisAllocateBuffer( &Status, &Buffer, GlobalBufferPool, NewData, Len );
    if( Status != NDIS_STATUS_SUCCESS ) {
 exFreePool( NewData );
 FreeNdisPacket( Packet );
    }
    TrackWithTag(NDIS_BUFFER_TAG, Buffer, File, Line);

    NdisChainBufferAtFront( Packet, Buffer );
    *NdisPacket = Packet;

    return NDIS_STATUS_SUCCESS;
}
