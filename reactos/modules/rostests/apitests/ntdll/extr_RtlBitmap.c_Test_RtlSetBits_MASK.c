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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void
FUNC6(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;
    ULONG BufferSize = 2 * sizeof(*Buffer);

    Buffer = FUNC0(BufferSize);
    FUNC2(&BitMapHeader, Buffer, 19);

    FUNC4(Buffer, 0x00, BufferSize);
    FUNC3(&BitMapHeader, 0, 0);
    FUNC5(Buffer[0], 0x00000000);
    FUNC5(Buffer[1], 0x00000000);

    FUNC4(Buffer, 0x00, BufferSize);
    FUNC3(&BitMapHeader, 0, 1);
    FUNC5(Buffer[0], 0x00000001);
    FUNC5(Buffer[1], 0x00000000);

    FUNC4(Buffer, 0x00, BufferSize);
    FUNC3(&BitMapHeader, 21, 1);
    FUNC5(Buffer[0], 0x00200000);
    FUNC5(Buffer[1], 0x00000000);

    FUNC4(Buffer, 0x00, BufferSize);
    FUNC3(&BitMapHeader, 7, 9);
    FUNC5(Buffer[0], 0x0000ff80);
    FUNC5(Buffer[1], 0x00000000);

    FUNC4(Buffer, 0x00, BufferSize);
    FUNC3(&BitMapHeader, 13, 22);
    FUNC5(Buffer[0], 0xffffe000);
    FUNC5(Buffer[1], 0x00000007);

    FUNC4(Buffer, 0x00, BufferSize);
    FUNC3(&BitMapHeader, 63, 1);
    FUNC5(Buffer[0], 0x00000000);
    FUNC5(Buffer[1], 0x80000000);

    FUNC4(Buffer, 0xcc, BufferSize);
    FUNC3(&BitMapHeader, 3, 6);
    FUNC3(&BitMapHeader, 11, 5);
    FUNC3(&BitMapHeader, 21, 7);
    FUNC3(&BitMapHeader, 37, 4);
    FUNC5(Buffer[0], 0xcfecfdfc);
    FUNC5(Buffer[1], 0xcccccdec);
    FUNC1(Buffer);
}