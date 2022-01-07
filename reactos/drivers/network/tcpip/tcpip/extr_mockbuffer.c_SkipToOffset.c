
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ UINT ;
typedef int PVOID ;
typedef scalar_t__* PUINT ;
typedef int PNDIS_BUFFER ;
typedef scalar_t__ PCHAR ;
typedef int INT ;


 int NdisGetNextBuffer (int ,int *) ;
 int XNdisQueryBuffer (int ,int ,scalar_t__*) ;

__inline INT SkipToOffset(
    PNDIS_BUFFER Buffer,
    UINT Offset,
    PCHAR *Data,
    PUINT Size)
{
    for (;;) {

        if (!Buffer)
            return -1;

        XNdisQueryBuffer(Buffer, (PVOID)Data, Size);

        if (Offset < *Size) {
            *Data = (PCHAR)((ULONG_PTR) *Data + Offset);
            *Size -= Offset;
            break;
        }

        Offset -= *Size;

        NdisGetNextBuffer(Buffer, &Buffer);
    }

    return Offset;
}
