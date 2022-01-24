#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_3__ {int right; int left; int bottom; int top; } ;
typedef  int /*<<< orphan*/  SURFOBJ ;
typedef  TYPE_1__ RECTL ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 scalar_t__ GRA_D ; 
 scalar_t__ GRA_I ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int* endmasks ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int FUNC5 (int) ; 
 int* startmasks ; 
 int vidmem ; 
 int* xconv ; 
 int* y80 ; 

BOOL FUNC6(SURFOBJ *Surface, RECTL Dimensions, ULONG iColor)
{
    int x, y, x2, y2, w, h, j;
    ULONG orgx, pre1, midpre1, tmppre1;
    //ULONG offset, orgpre1;
    int ileftpix, imidpix, irightpix;
/*    double leftpix, midpix, rightpix;*/

    /* Swap dimensions so that x, y are at topmost left */
    if ( Dimensions.right < Dimensions.left )
    {
        x  = Dimensions.right;
        x2 = Dimensions.left;
    }
    else
    {
        x2 = Dimensions.right;
        x  = Dimensions.left;
    }
    if ( Dimensions.bottom < Dimensions.top )
    {
        y  = Dimensions.bottom;
        y2 = Dimensions.top;
    }
    else
    {
        y2 = Dimensions.bottom;
        y  = Dimensions.top;
    }

    /* Calculate the width and height */
    w = x2 - x;
    h = y2 - y;

    FUNC0("VGADDIFillSolid: x:%d, y:%d, w:%d, h:%d\n", x, y, w, h);

    /* Calculate the starting offset */
    //offset = xconv[x]+y80[y];

    /* Make a note of original x */
    orgx = x;

    /* Calculate the left mask pixels, middle bytes and right mask pixel */
    ileftpix = 7 - FUNC5(x-1);
    irightpix = FUNC5(x+w);
    imidpix = (w-ileftpix-irightpix) / 8;

    pre1 = xconv[(x-1)&~7] + y80[y];
    //orgpre1=pre1;

    /* check for overlap ( very horizontally skinny rect ) */
    if ( (ileftpix+irightpix) > w )
    {
        int mask = startmasks[ileftpix] & endmasks[irightpix];

        FUNC2((PUCHAR)GRA_I,0x08);     // set the mask
        FUNC2((PUCHAR)GRA_D,mask);

        tmppre1 = pre1;
        for ( j = y; j < y+h; j++ )
        {
            FUNC1 ( vidmem+tmppre1 );
            FUNC3 ( vidmem+tmppre1, iColor );
            tmppre1 += 80;
        }
        return TRUE;
    }

    if ( ileftpix > 0 )
    {
        /* Write left pixels */
        FUNC2((PUCHAR)GRA_I,0x08);     // set the mask
        FUNC2((PUCHAR)GRA_D,startmasks[ileftpix]);

        tmppre1 = pre1;
        for ( j = y; j < y+h; j++ )
        {
            FUNC1(vidmem + tmppre1);
            FUNC3(vidmem + tmppre1, iColor);
            tmppre1 += 80;
        }

        /* Prepare new x for the middle */
        x = orgx + 8;
    }

    if ( imidpix > 0 )
    {
        midpre1=xconv[x] + y80[y];

        /* Set mask to all pixels in byte */
        FUNC2((PUCHAR)GRA_I, 0x08);

        FUNC2((PUCHAR)GRA_D, 0xff);

        for ( j = y; j < y+h; j++ )
        {
            FUNC4(vidmem+midpre1, iColor, imidpix); // write middle pixels, no need to read in latch because of the width
            midpre1 += 80;
        }
    }

    x = orgx + w - irightpix;
    pre1 = xconv[x] + y80[y];

    /* Write right pixels */
    FUNC2((PUCHAR)GRA_I,0x08);     // set the mask bits
    FUNC2((PUCHAR)GRA_D,endmasks[irightpix]);

    for ( j = y; j < y+h; j++ )
    {
        FUNC1(vidmem + pre1);
        FUNC3(vidmem + pre1, iColor);
        pre1 += 80;
    }

    return TRUE;
}