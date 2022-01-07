
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SIZE_T ;
typedef scalar_t__ PUCHAR ;
typedef int PCSTR ;
typedef int BOOLEAN ;


 int CheckBuffer (scalar_t__,scalar_t__,int) ;
 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 int RtlFillMemory (scalar_t__,scalar_t__,int) ;
 int RtlGetProcessHeap () ;
 scalar_t__ RtlReAllocateHeap (int ,int ,scalar_t__,scalar_t__) ;
 int RtlSizeHeap (int ,int ,scalar_t__) ;
 int TRUE ;
 int ok (int ,char*,scalar_t__,scalar_t__) ;
 int ok_hex (int ,scalar_t__) ;
 int skip (char*,scalar_t__,int ) ;

__attribute__((used)) static
BOOLEAN
ReAllocBuffer(
    PUCHAR *Buffer,
    SIZE_T Size,
    SIZE_T *OldSizePtr,
    PCSTR Action)
{
    PUCHAR NewBuffer;
    SIZE_T OldSize = *OldSizePtr;

    RtlFillMemory(*Buffer, OldSize, 0x7a);
    NewBuffer = RtlReAllocateHeap(RtlGetProcessHeap(),
                                  HEAP_ZERO_MEMORY,
                                  *Buffer,
                                  Size);
    if (!NewBuffer)
    {
        skip("RtlReAllocateHeap failed for size %lu (%s)\n", Size, Action);
        return FALSE;
    }
    *Buffer = NewBuffer;
    ok_hex(RtlSizeHeap(RtlGetProcessHeap(), 0, NewBuffer), Size);
    if (OldSize < Size)
    {
        ok(CheckBuffer(NewBuffer, OldSize, 0x7a), "CheckBuffer failed at size 0x%lx -> 0x%lx\n", OldSize, Size);
        ok(CheckBuffer(NewBuffer + OldSize, Size - OldSize, 0), "HEAP_ZERO_MEMORY not respected for 0x%lx -> 0x%lx\n", OldSize, Size);
    }
    else
    {
        ok(CheckBuffer(NewBuffer, Size, 0x7a), "CheckBuffer failed at size 0x%lx -> 0x%lx\n", OldSize, Size);
    }
    *OldSizePtr = Size;
    return TRUE;
}
