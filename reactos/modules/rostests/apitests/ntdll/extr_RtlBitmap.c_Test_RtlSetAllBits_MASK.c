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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
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
    FUNC4(Buffer, 0xcc, BufferSize);
    FUNC3(&BitMapHeader);
    FUNC5(Buffer[0], 0xffffffff);
    FUNC5(Buffer[1], 0xcccccccc);

    FUNC2(&BitMapHeader, Buffer, 0);
    FUNC4(Buffer, 0xcc, BufferSize);
    FUNC3(&BitMapHeader);
    FUNC5(Buffer[0], 0xcccccccc);
    FUNC5(Buffer[1], 0xcccccccc);

    FUNC2(&BitMapHeader, Buffer, 64);
    FUNC4(Buffer, 0xcc, BufferSize);
    FUNC3(&BitMapHeader);
    FUNC5(Buffer[0], 0xffffffff);
    FUNC5(Buffer[1], 0xffffffff);
    FUNC1(Buffer);
}