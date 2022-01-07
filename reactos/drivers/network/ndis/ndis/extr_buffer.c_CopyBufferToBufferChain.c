
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ UINT ;
typedef int PVOID ;
typedef scalar_t__ PUCHAR ;
typedef int PNDIS_BUFFER ;


 int MAX_TRACE ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int NDIS_DbgPrint (int ,char*) ;
 int NdisGetNextBuffer (int ,int *) ;
 int NdisQueryBuffer (int ,int ,scalar_t__*) ;
 int RtlCopyMemory (int ,int ,scalar_t__) ;
 int SkipToOffset (int ,scalar_t__,scalar_t__*,scalar_t__*) ;

UINT CopyBufferToBufferChain(
    PNDIS_BUFFER DstBuffer,
    UINT DstOffset,
    PUCHAR SrcData,
    UINT Length)
{
    UINT BytesCopied, BytesToCopy, DstSize;
    PUCHAR DstData;

    NDIS_DbgPrint(MAX_TRACE, ("DstBuffer (0x%X)  DstOffset (0x%X)  SrcData (0x%X)  Length (%d)\n", DstBuffer, DstOffset, SrcData, Length));


    if (SkipToOffset(DstBuffer, DstOffset, &DstData, &DstSize) == 0xFFFFFFFF)
        return 0;


    BytesCopied = 0;
    for (;;) {
        BytesToCopy = MIN(DstSize, Length);

        RtlCopyMemory((PVOID)DstData, (PVOID)SrcData, BytesToCopy);
        BytesCopied += BytesToCopy;
        SrcData = (PUCHAR) ((ULONG_PTR) SrcData + BytesToCopy);

        Length -= BytesToCopy;
        if (Length == 0)
            break;

        DstSize -= BytesToCopy;
        if (DstSize == 0) {


            NdisGetNextBuffer(DstBuffer, &DstBuffer);
            if (!DstBuffer)
                break;

            NdisQueryBuffer(DstBuffer, (PVOID)&DstData, &DstSize);
        }
    }

    return BytesCopied;
}
