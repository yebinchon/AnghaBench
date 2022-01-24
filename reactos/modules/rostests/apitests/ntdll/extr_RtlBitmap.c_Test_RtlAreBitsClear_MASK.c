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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = FUNC0(2 * sizeof(*Buffer));
    FUNC3(&BitMapHeader, Buffer, 19);
    Buffer[0] = 0x00ff00ff;
    Buffer[1] = 0xc0cfc0cf;

    FUNC4(FUNC2(&BitMapHeader, 0, 8), FALSE);
    FUNC4(FUNC2(&BitMapHeader, 8, 8), TRUE);
    FUNC4(FUNC2(&BitMapHeader, 7, 8), FALSE);
    FUNC4(FUNC2(&BitMapHeader, 8, 9), FALSE);
    FUNC4(FUNC2(&BitMapHeader, 24, 1), FALSE);

    FUNC3(&BitMapHeader, Buffer, 31);
    FUNC4(FUNC2(&BitMapHeader, 24, 1), TRUE);
    FUNC4(FUNC2(&BitMapHeader, 24, 7), TRUE);
    FUNC4(FUNC2(&BitMapHeader, 24, 8), FALSE);

    FUNC3(&BitMapHeader, Buffer, 64);
    FUNC4(FUNC2(&BitMapHeader, 60, 4), FALSE);
    FUNC1(Buffer);
}