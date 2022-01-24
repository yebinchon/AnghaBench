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
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ PUCHAR ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
BOOLEAN
FUNC8(
    PUCHAR *Buffer,
    SIZE_T Size,
    SIZE_T *OldSizePtr,
    PCSTR Action)
{
    PUCHAR NewBuffer;
    SIZE_T OldSize = *OldSizePtr;

    FUNC1(*Buffer, OldSize, 0x7a);
    NewBuffer = FUNC3(FUNC2(),
                                  HEAP_ZERO_MEMORY,
                                  *Buffer,
                                  Size);
    if (!NewBuffer)
    {
        FUNC7("RtlReAllocateHeap failed for size %lu (%s)\n", Size, Action);
        return FALSE;
    }
    *Buffer = NewBuffer;
    FUNC6(FUNC4(FUNC2(), 0, NewBuffer), Size);
    if (OldSize < Size)
    {
        FUNC5(FUNC0(NewBuffer, OldSize, 0x7a), "CheckBuffer failed at size 0x%lx -> 0x%lx\n", OldSize, Size);
        FUNC5(FUNC0(NewBuffer + OldSize, Size - OldSize, 0), "HEAP_ZERO_MEMORY not respected for 0x%lx -> 0x%lx\n", OldSize, Size);
    }
    else
    {
        FUNC5(FUNC0(NewBuffer, Size, 0x7a), "CheckBuffer failed at size 0x%lx -> 0x%lx\n", OldSize, Size);
    }
    *OldSizePtr = Size;
    return TRUE;
}