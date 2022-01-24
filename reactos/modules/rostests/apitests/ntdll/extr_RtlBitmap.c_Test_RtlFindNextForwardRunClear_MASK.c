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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void
FUNC5(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;
    ULONG Index;

    Buffer = FUNC0(2 * sizeof(*Buffer));
    Buffer[0] = 0xF9F078B2;
    Buffer[1] = 0x3F303F30;

    FUNC3(&BitMapHeader, Buffer, 0);
    FUNC4(FUNC2(&BitMapHeader, 0, &Index), 0);
    FUNC4(Index, 0);
    FUNC4(FUNC2(&BitMapHeader, 1, &Index), 0);
    FUNC4(Index, 1);

    Index = -1;
    FUNC3(&BitMapHeader, Buffer, 8);
    FUNC4(FUNC2(&BitMapHeader, 0, &Index), 1);
    FUNC4(Index, 0);
    FUNC4(FUNC2(&BitMapHeader, 1, &Index), 2);
    FUNC4(Index, 2);
    FUNC4(FUNC2(&BitMapHeader, 7, &Index), 0);
    FUNC4(Index, 8);
    FUNC4(FUNC2(&BitMapHeader, 17, &Index), 0);
    FUNC4(Index, 17);
    FUNC4(FUNC2(&BitMapHeader, 39, &Index), 0);
    FUNC4(Index, 39);
    FUNC1(Buffer);
}