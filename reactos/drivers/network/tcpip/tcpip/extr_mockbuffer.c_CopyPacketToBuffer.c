
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;


 int CopyBufferChainToBuffer (int ,int ,int ,int ) ;
 int DEBUG_PBUFFER ;
 int TI_DbgPrint (int ,char*) ;
 int XNdisGetFirstBufferFromPacket (int ,int *,int *,int *,int *) ;

UINT CopyPacketToBuffer(
    PCHAR DstData,
    PNDIS_PACKET SrcPacket,
    UINT SrcOffset,
    UINT Length)
{
    PNDIS_BUFFER FirstBuffer;
    PVOID Address;
    UINT FirstLength;
    UINT TotalLength;

    TI_DbgPrint(DEBUG_PBUFFER, ("DstData (0x%X)  SrcPacket (0x%X)  SrcOffset (0x%X)  Length (%d)\n", DstData, SrcPacket, SrcOffset, Length));

    XNdisGetFirstBufferFromPacket(SrcPacket,
      &FirstBuffer,
      &Address,
      &FirstLength,
      &TotalLength);

    return CopyBufferChainToBuffer(DstData, FirstBuffer, SrcOffset, Length);
}
