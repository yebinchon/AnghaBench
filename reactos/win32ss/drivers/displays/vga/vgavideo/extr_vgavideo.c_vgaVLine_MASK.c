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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ GRA_D ; 
 scalar_t__ GRA_I ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int* maskbit ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t vidmem ; 
 size_t* xconv ; 
 size_t* y80 ; 

BOOL FUNC4(INT x, INT y, INT len, UCHAR c)
{
    INT offset, i;

    offset = xconv[x]+y80[y];

#ifdef VGA_PERF
    vgaSetBitMaskRegister ( maskbit[x] );
#else
    FUNC1((PUCHAR)GRA_I,0x08);       // set the mask
    FUNC1((PUCHAR)GRA_D,maskbit[x]);
#endif

    for(i=y; i<y+len; i++)
    {
        FUNC0(vidmem + offset);
        FUNC2(vidmem + offset, c);
        offset += 80;
    }

    return TRUE;
}