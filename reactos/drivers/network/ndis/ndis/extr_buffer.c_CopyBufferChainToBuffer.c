
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

UINT CopyBufferChainToBuffer(
    PUCHAR DstData,
    PNDIS_BUFFER SrcBuffer,
    UINT SrcOffset,
    UINT Length)
{
    UINT BytesCopied, BytesToCopy, SrcSize;
    PUCHAR SrcData;

    NDIS_DbgPrint(MAX_TRACE, ("DstData 0x%X  SrcBuffer 0x%X  SrcOffset 0x%X  Length %d\n",DstData,SrcBuffer, SrcOffset, Length));


    if (SkipToOffset(SrcBuffer, SrcOffset, &SrcData, &SrcSize) == 0xFFFFFFFF)
        return 0;


    BytesCopied = 0;
    for (;;) {
        BytesToCopy = MIN(SrcSize, Length);

        NDIS_DbgPrint(MAX_TRACE, ("Copying (%d) bytes from 0x%X to 0x%X\n", BytesToCopy, SrcData, DstData));

        RtlCopyMemory((PVOID)DstData, (PVOID)SrcData, BytesToCopy);
        BytesCopied += BytesToCopy;
        DstData = (PUCHAR)((ULONG_PTR) DstData + BytesToCopy);

        Length -= BytesToCopy;
        if (Length == 0)
            break;

        SrcSize -= BytesToCopy;
        if (SrcSize == 0) {


            NdisGetNextBuffer(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            NdisQueryBuffer(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }
    }

    return BytesCopied;
}
