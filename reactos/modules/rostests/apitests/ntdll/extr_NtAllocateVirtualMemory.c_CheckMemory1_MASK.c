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
typedef  int /*<<< orphan*/  ULONG ;
typedef  size_t SIZE_T ;
typedef  scalar_t__* PVOID ;
typedef  scalar_t__* PBYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static
BOOLEAN
FUNC3(
    PVOID UserBuffer,
    SIZE_T DataSize)
{
    PBYTE Buffer = UserBuffer;
    SIZE_T i;

    for (i = 0; i < DataSize; ++i)
        if (Buffer[i] != FUNC1(i))
        {
            FUNC2("Mismatch in region %p at index %lu. Value=%02x\n", UserBuffer, (ULONG)i, Buffer[i]);
            FUNC0(FALSE);
            return FALSE;
        }
    return TRUE;
}