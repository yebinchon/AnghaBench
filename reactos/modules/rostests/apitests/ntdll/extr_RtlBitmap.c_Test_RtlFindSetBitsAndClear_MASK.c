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
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = FUNC0(2 * sizeof(*Buffer));
    Buffer[0] = 0xF9F078B2;
    Buffer[1] = 0x3F303F30;

    FUNC3(&BitMapHeader, Buffer, 0);
    FUNC5(FUNC2(&BitMapHeader, 0, 0), 0);
    FUNC5(FUNC2(&BitMapHeader, 0, 3), 0);
    FUNC5(FUNC2(&BitMapHeader, 1, 0), -1);
    FUNC5(FUNC2(&BitMapHeader, 1, 1), -1);
    FUNC4(Buffer[0], 0xF9F078B2);

    Buffer[0] = 0xF9F078B2;
    FUNC3(&BitMapHeader, Buffer, 8);
    FUNC5(FUNC2(&BitMapHeader, 1, 0), 1);
    FUNC4(Buffer[0], 0xf9f078b0);
    FUNC5(FUNC2(&BitMapHeader, 1, 1), 4);
    FUNC4(Buffer[0], 0xf9f078a0);
    FUNC5(FUNC2(&BitMapHeader, 1, 2), 5);
    FUNC4(Buffer[0], 0xf9f07880);
    FUNC5(FUNC2(&BitMapHeader, 2, 0), -1);
    FUNC4(Buffer[0], 0xf9f07880);

    Buffer[0] = 0xF9F078B2;
    FUNC3(&BitMapHeader, Buffer, 32);
    FUNC5(FUNC2(&BitMapHeader, 4, 0), 11);
    FUNC4(Buffer[0], 0xf9f000b2);
    FUNC5(FUNC2(&BitMapHeader, 5, 0), 20);
    FUNC4(Buffer[0], 0xf80000b2);
    FUNC5(FUNC2(&BitMapHeader, 4, 11), 27);
    FUNC4(Buffer[0], 0x800000b2);

    Buffer[0] = 0xF9F078B2;
    FUNC5(FUNC2(&BitMapHeader, 4, 12), 20);
    FUNC4(Buffer[0], 0xf90078b2);
    FUNC5(FUNC2(&BitMapHeader, 2, 11), 11);
    FUNC4(Buffer[0], 0xf90060b2);
    FUNC5(FUNC2(&BitMapHeader, 2, 12), 13);
    FUNC4(Buffer[0], 0xf90000b2);
    FUNC1(Buffer);
}