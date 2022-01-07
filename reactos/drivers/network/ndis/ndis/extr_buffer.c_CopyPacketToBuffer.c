
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PVOID ;
typedef int PUCHAR ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;


 int CopyBufferChainToBuffer (int ,int ,int ,int ) ;
 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NdisGetFirstBufferFromPacket (int ,int *,int *,int *,int *) ;

UINT CopyPacketToBuffer(
    PUCHAR DstData,
    PNDIS_PACKET SrcPacket,
    UINT SrcOffset,
    UINT Length)
{
    PNDIS_BUFFER FirstBuffer;
    PVOID Address;
    UINT FirstLength;
    UINT TotalLength;

    NDIS_DbgPrint(MAX_TRACE, ("DstData (0x%X)  SrcPacket (0x%X)  SrcOffset (0x%X)  Length (%d)\n", DstData, SrcPacket, SrcOffset, Length));

    NdisGetFirstBufferFromPacket(SrcPacket,
                                 &FirstBuffer,
                                 &Address,
                                 &FirstLength,
                                 &TotalLength);

    return CopyBufferChainToBuffer(DstData, FirstBuffer, SrcOffset, Length);
}
