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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = FUNC0(2 * sizeof(*Buffer));
    Buffer[0] = 0x060F874D;
    Buffer[1] = 0x3F303F30;

    FUNC3(&BitMapHeader, Buffer, 0);
    FUNC4(FUNC2(&BitMapHeader, 0, 0), 0);
    FUNC4(FUNC2(&BitMapHeader, 0, 3), 0);
    FUNC4(FUNC2(&BitMapHeader, 1, 0), -1);
    FUNC4(FUNC2(&BitMapHeader, 1, 1), -1);

    FUNC3(&BitMapHeader, Buffer, 8);
    FUNC4(FUNC2(&BitMapHeader, 0, 3), 0);
    FUNC4(FUNC2(&BitMapHeader, 1, 0), 1);
    FUNC4(FUNC2(&BitMapHeader, 1, 1), 1);
    FUNC4(FUNC2(&BitMapHeader, 1, 2), 4);

    FUNC4(FUNC2(&BitMapHeader, 2, 0), 4);
    FUNC4(FUNC2(&BitMapHeader, 3, 0), -1);

    FUNC3(&BitMapHeader, Buffer, 32);
    FUNC4(FUNC2(&BitMapHeader, 0, 3), 0);
    FUNC4(FUNC2(&BitMapHeader, 0, 21), 16);
    FUNC4(FUNC2(&BitMapHeader, 0, 12), 8);
    FUNC4(FUNC2(&BitMapHeader, 0, 31), 24);
    FUNC4(FUNC2(&BitMapHeader, 0, 32), 0);
    FUNC4(FUNC2(&BitMapHeader, 0, 39), 0);
    FUNC4(FUNC2(&BitMapHeader, 4, 0), 11);
    FUNC4(FUNC2(&BitMapHeader, 5, 0), 20);
    FUNC4(FUNC2(&BitMapHeader, 4, 11), 11);
    FUNC4(FUNC2(&BitMapHeader, 4, 12), 20);
    FUNC4(FUNC2(&BitMapHeader, 2, 11), 11);
    FUNC4(FUNC2(&BitMapHeader, 2, 12), 12);
    FUNC4(FUNC2(&BitMapHeader, 1, 32), 1);
    FUNC4(FUNC2(&BitMapHeader, 4, 32), 11);
    FUNC4(FUNC2(&BitMapHeader, 5, 32), 20);

    FUNC3(&BitMapHeader, Buffer, 64);
    FUNC4(FUNC2(&BitMapHeader, 5, 64), 20);
    FUNC4(FUNC2(&BitMapHeader, 9, 28), 27);
    FUNC4(FUNC2(&BitMapHeader, 10, 0), -1);
    Buffer[1] = 0xFF303F30;
    FUNC4(FUNC2(&BitMapHeader, 1, 56), 1);
    FUNC1(Buffer);
}