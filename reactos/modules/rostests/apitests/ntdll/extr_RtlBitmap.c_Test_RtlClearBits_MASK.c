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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void
FUNC6(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;
    ULONG BufferSize = 2 * sizeof(*Buffer);

    Buffer = FUNC0(BufferSize);
    FUNC3(&BitMapHeader, Buffer, 19);

    FUNC4(Buffer, 0xff, BufferSize);
    FUNC2(&BitMapHeader, 0, 0);
    FUNC5(Buffer[0], 0xffffffff);
    FUNC5(Buffer[1], 0xffffffff);

    FUNC4(Buffer, 0xff, BufferSize);
    FUNC2(&BitMapHeader, 0, 1);
    FUNC5(Buffer[0], 0xfffffffe);
    FUNC5(Buffer[1], 0xffffffff);

    FUNC4(Buffer, 0xff, BufferSize);
    FUNC2(&BitMapHeader, 21, 1);
    FUNC5(Buffer[0], 0xffdfffff);
    FUNC5(Buffer[1], 0xffffffff);

    FUNC4(Buffer, 0xff, BufferSize);
    FUNC2(&BitMapHeader, 7, 9);
    FUNC5(Buffer[0], 0xffff007f);
    FUNC5(Buffer[1], 0xffffffff);

    FUNC4(Buffer, 0xff, BufferSize);
    FUNC2(&BitMapHeader, 13, 22);
    FUNC5(Buffer[0], 0x00001fff);
    FUNC5(Buffer[1], 0xfffffff8);

    FUNC4(Buffer, 0xff, BufferSize);
    FUNC2(&BitMapHeader, 63, 1);
    FUNC5(Buffer[0], 0xffffffff);
    FUNC5(Buffer[1], 0x7fffffff);

    FUNC4(Buffer, 0xcc, BufferSize);
    FUNC2(&BitMapHeader, 3, 6);
    FUNC2(&BitMapHeader, 11, 5);
    FUNC2(&BitMapHeader, 21, 7);
    FUNC2(&BitMapHeader, 37, 4);
    FUNC5(Buffer[0], 0xc00c0404);
    FUNC5(Buffer[1], 0xcccccc0c);
    FUNC1(Buffer);
}