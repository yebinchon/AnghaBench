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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int LONG ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ GRA_D ; 
 scalar_t__ GRA_I ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int* endmasks ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int* startmasks ; 
 int vidmem ; 
 int* xconv ; 
 int* y80 ; 

BOOL FUNC5(INT x, INT y, INT len, UCHAR c)
{
    ULONG orgx, pre1, midpre1;
    //ULONG orgpre1;
    LONG ileftpix, imidpix, irightpix;

    orgx = x;

    /*if ( len < 8 )
    {
        for (i = x; i < x+len; i++ )
            vgaPutPixel ( i, y, c );

        return TRUE;
    }*/

    /* Calculate the left mask pixels, middle bytes and right mask pixel */
    ileftpix = 7 - FUNC4(x-1);
    irightpix = FUNC4(x+len);
    imidpix = (len-ileftpix-irightpix) / 8;

    pre1 = xconv[(x-1)&~7] + y80[y];
    //orgpre1=pre1;

    /* check for overlap ( very short line ) */
    if ( (ileftpix+irightpix) > len )
    {
        int mask = startmasks[ileftpix] & endmasks[irightpix];
        /* Write left pixels */
        FUNC1((PUCHAR)GRA_I,0x08);     // set the mask
        FUNC1((PUCHAR)GRA_D,mask);

        FUNC0(vidmem + pre1);
        FUNC2(vidmem + pre1, c);

        return TRUE;
    }

    /* Left */
    if ( ileftpix > 0 )
    {
        /* Write left pixels */
        FUNC1((PUCHAR)GRA_I,0x08);     // set the mask
        FUNC1((PUCHAR)GRA_D,startmasks[ileftpix]);

        FUNC0(vidmem + pre1);
        FUNC2(vidmem + pre1, c);

        /* Prepare new x for the middle */
        x = orgx + 8;
    }

    if ( imidpix > 0 )
    {
        midpre1 = xconv[x] + y80[y];

        /* Set mask to all pixels in byte */
        FUNC1((PUCHAR)GRA_I, 0x08);
        FUNC1((PUCHAR)GRA_D, 0xff);
        FUNC3(vidmem+midpre1, c, imidpix); // write middle pixels, no need to read in latch because of the width
    }

    if ( irightpix > 0 )
    {
        x = orgx + len - irightpix;
        pre1 = xconv[x] + y80[y];

        /* Write right pixels */
        FUNC1((PUCHAR)GRA_I,0x08);     // set the mask bits
        FUNC1((PUCHAR)GRA_D, endmasks[irightpix]);
        FUNC0(vidmem + pre1);
        FUNC2(vidmem + pre1, c);
    }

    return TRUE;
}