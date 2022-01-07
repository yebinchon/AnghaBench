
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ VOID ;
typedef scalar_t__ const ULONG ;
typedef scalar_t__ const UCHAR ;
typedef size_t SIZE_T ;
typedef scalar_t__ const* PCWSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int ok (int,char*,scalar_t__ const,scalar_t__ const) ;
 int trace (char*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;
 size_t wcslen (scalar_t__ const*) ;

__attribute__((used)) static
BOOLEAN
CheckStringBufferW(
    const VOID *Buffer,
    SIZE_T Size,
    PCWSTR Expected,
    UCHAR Fill)
{
    const WCHAR *Chars = Buffer;
    const UCHAR *UChars = Buffer;
    SIZE_T Length = wcslen(Expected);
    SIZE_T i;

    if (Size < Length)
    {
        ok(0, "Size = %lu, Length = %lu\n", (ULONG)Size, (ULONG)Length);
        return FALSE;
    }

    for (i = 0; i < Length; i++)
        if (Chars[i] != Expected[i])
        {
            trace("Expected %x, found %x at offset %lu\n", Expected[i], Chars[i], (ULONG)i);
            return FALSE;
        }

    ok(Chars[i] == 0, "Expected null terminator, found %x at offset %lu\n", Chars[i], (ULONG)i);
    i++;

    i *= sizeof(WCHAR);

    for (; i < Size; i++)
        if (UChars[i] != Fill)
        {
            trace("Expected %x, found %x at offset %lu\n", Fill, UChars[i], (ULONG)i);
            return FALSE;
        }
    return TRUE;
}
