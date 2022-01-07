
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef scalar_t__ PCHAR ;


 int DEBUG_PBUFFER ;
 int NdisGetNextBuffer (int ,int *) ;
 int RtlCopyMemory (int ,int ,scalar_t__) ;
 int SkipToOffset (int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int TI_DbgPrint (int ,char*) ;
 int XNdisGetFirstBufferFromPacket (int ,int *,int *,scalar_t__*,scalar_t__*) ;
 int XNdisQueryBuffer (int ,int ,scalar_t__*) ;

UINT CopyPacketToBufferChain(
    PNDIS_BUFFER DstBuffer,
    UINT DstOffset,
    PNDIS_PACKET SrcPacket,
    UINT SrcOffset,
    UINT Length)
{
    PNDIS_BUFFER SrcBuffer;
    PCHAR DstData, SrcData;
    UINT DstSize, SrcSize;
    UINT Count, Total;

    TI_DbgPrint(DEBUG_PBUFFER, ("DstBuffer (0x%X)  DstOffset (0x%X)  SrcPacket (0x%X)  SrcOffset (0x%X)  Length (%d)\n", DstBuffer, DstOffset, SrcPacket, SrcOffset, Length));


    XNdisQueryBuffer(DstBuffer, (PVOID)&DstData, &DstSize);
    if (SkipToOffset(DstBuffer, DstOffset, &DstData, &DstSize) == -1)
        return 0;


    XNdisGetFirstBufferFromPacket(SrcPacket, &SrcBuffer, (PVOID *)&SrcData, &SrcSize, &Total);
    if (SkipToOffset(SrcBuffer, SrcOffset, &SrcData, &SrcSize) == -1)
        return 0;


    for (Total = 0;;) {

        if (Length < SrcSize)
            Count = Length;
        else
            Count = SrcSize;
        if (DstSize < Count)
            Count = DstSize;

        RtlCopyMemory((PVOID)DstData, (PVOID)SrcData, Count);

        Total += Count;
        Length -= Count;
        if (Length == 0)
            break;

        DstSize -= Count;
        if (DstSize == 0) {


            NdisGetNextBuffer(DstBuffer, &DstBuffer);
            if (!DstBuffer)
                break;

            XNdisQueryBuffer(DstBuffer, (PVOID)&DstData, &DstSize);
        }

        SrcSize -= Count;
        if (SrcSize == 0) {


            NdisGetNextBuffer(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            XNdisQueryBuffer(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }
    }

    return Total;
}
