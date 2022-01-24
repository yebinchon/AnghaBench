#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ VOID ;
typedef  scalar_t__ const ULONG ;
typedef  scalar_t__ const UCHAR ;
typedef  size_t SIZE_T ;
typedef  scalar_t__ const* PCWSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 
 size_t FUNC2 (scalar_t__ const*) ; 

__attribute__((used)) static
BOOLEAN
FUNC3(
    const VOID *Buffer,
    SIZE_T Size,
    PCWSTR Expected,
    UCHAR Fill)
{
    const WCHAR *Chars = Buffer;
    const UCHAR *UChars = Buffer;
    SIZE_T Length = FUNC2(Expected);
    SIZE_T i;

    if (Size < Length)
    {
        FUNC0(0, "Size = %lu, Length = %lu\n", (ULONG)Size, (ULONG)Length);
        return FALSE;
    }

    for (i = 0; i < Length; i++)
        if (Chars[i] != Expected[i])
        {
            FUNC1("Expected %x, found %x at offset %lu\n", Expected[i], Chars[i], (ULONG)i);
            return FALSE;
        }

    FUNC0(Chars[i] == 0, "Expected null terminator, found %x at offset %lu\n", Chars[i], (ULONG)i);
    i++;

    i *= sizeof(WCHAR);

    for (; i < Size; i++)
        if (UChars[i] != Fill)
        {
            FUNC1("Expected %x, found %x at offset %lu\n", Fill, UChars[i], (ULONG)i);
            return FALSE;
        }
    return TRUE;
}