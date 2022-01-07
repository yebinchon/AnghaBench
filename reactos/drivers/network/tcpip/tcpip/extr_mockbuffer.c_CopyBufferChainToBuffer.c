
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ UINT ;
typedef int PVOID ;
typedef int PNDIS_BUFFER ;
typedef scalar_t__ PCHAR ;


 int DEBUG_PBUFFER ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int NdisGetNextBuffer (int ,int *) ;
 int RtlCopyMemory (int ,int ,scalar_t__) ;
 int SkipToOffset (int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int TI_DbgPrint (int ,char*) ;
 int XNdisQueryBuffer (int ,int ,scalar_t__*) ;

UINT CopyBufferChainToBuffer(
    PCHAR DstData,
    PNDIS_BUFFER SrcBuffer,
    UINT SrcOffset,
    UINT Length)
{
    UINT BytesCopied, BytesToCopy, SrcSize;
    PCHAR SrcData;

    TI_DbgPrint(DEBUG_PBUFFER, ("DstData 0x%X  SrcBuffer 0x%X  SrcOffset 0x%X  Length %d\n",DstData,SrcBuffer, SrcOffset, Length));


    if (SkipToOffset(SrcBuffer, SrcOffset, &SrcData, &SrcSize) == -1)
        return 0;


    BytesCopied = 0;
    for (;;) {
        BytesToCopy = MIN(SrcSize, Length);

        TI_DbgPrint(DEBUG_PBUFFER, ("Copying (%d) bytes from 0x%X to 0x%X\n", BytesToCopy, SrcData, DstData));

        RtlCopyMemory((PVOID)DstData, (PVOID)SrcData, BytesToCopy);
        BytesCopied += BytesToCopy;
        DstData = (PCHAR)((ULONG_PTR)DstData + BytesToCopy);

        Length -= BytesToCopy;
        if (Length == 0)
            break;

        SrcSize -= BytesToCopy;
        if (SrcSize == 0) {


            NdisGetNextBuffer(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            XNdisQueryBuffer(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }
    }

    return BytesCopied;
}
