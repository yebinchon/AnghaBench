
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int right; int left; int bottom; int top; } ;
typedef int SURFOBJ ;
typedef TYPE_1__ RECTL ;
typedef int PUCHAR ;
typedef int BOOL ;


 int DPRINT (char*,int,int,int,int) ;
 scalar_t__ GRA_D ;
 scalar_t__ GRA_I ;
 int READ_REGISTER_UCHAR (int) ;
 int TRUE ;
 int WRITE_PORT_UCHAR (int ,int) ;
 int WRITE_REGISTER_UCHAR (int,int) ;
 int* endmasks ;
 int memset (int,int,int) ;
 int mod8 (int) ;
 int* startmasks ;
 int vidmem ;
 int* xconv ;
 int* y80 ;

BOOL VGADDIFillSolid(SURFOBJ *Surface, RECTL Dimensions, ULONG iColor)
{
    int x, y, x2, y2, w, h, j;
    ULONG orgx, pre1, midpre1, tmppre1;

    int ileftpix, imidpix, irightpix;



    if ( Dimensions.right < Dimensions.left )
    {
        x = Dimensions.right;
        x2 = Dimensions.left;
    }
    else
    {
        x2 = Dimensions.right;
        x = Dimensions.left;
    }
    if ( Dimensions.bottom < Dimensions.top )
    {
        y = Dimensions.bottom;
        y2 = Dimensions.top;
    }
    else
    {
        y2 = Dimensions.bottom;
        y = Dimensions.top;
    }


    w = x2 - x;
    h = y2 - y;

    DPRINT("VGADDIFillSolid: x:%d, y:%d, w:%d, h:%d\n", x, y, w, h);





    orgx = x;


    ileftpix = 7 - mod8(x-1);
    irightpix = mod8(x+w);
    imidpix = (w-ileftpix-irightpix) / 8;

    pre1 = xconv[(x-1)&~7] + y80[y];



    if ( (ileftpix+irightpix) > w )
    {
        int mask = startmasks[ileftpix] & endmasks[irightpix];

        WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D,mask);

        tmppre1 = pre1;
        for ( j = y; j < y+h; j++ )
        {
            READ_REGISTER_UCHAR ( vidmem+tmppre1 );
            WRITE_REGISTER_UCHAR ( vidmem+tmppre1, iColor );
            tmppre1 += 80;
        }
        return TRUE;
    }

    if ( ileftpix > 0 )
    {

        WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D,startmasks[ileftpix]);

        tmppre1 = pre1;
        for ( j = y; j < y+h; j++ )
        {
            READ_REGISTER_UCHAR(vidmem + tmppre1);
            WRITE_REGISTER_UCHAR(vidmem + tmppre1, iColor);
            tmppre1 += 80;
        }


        x = orgx + 8;
    }

    if ( imidpix > 0 )
    {
        midpre1=xconv[x] + y80[y];


        WRITE_PORT_UCHAR((PUCHAR)GRA_I, 0x08);

        WRITE_PORT_UCHAR((PUCHAR)GRA_D, 0xff);

        for ( j = y; j < y+h; j++ )
        {
            memset(vidmem+midpre1, iColor, imidpix);
            midpre1 += 80;
        }
    }

    x = orgx + w - irightpix;
    pre1 = xconv[x] + y80[y];


    WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
    WRITE_PORT_UCHAR((PUCHAR)GRA_D,endmasks[irightpix]);

    for ( j = y; j < y+h; j++ )
    {
        READ_REGISTER_UCHAR(vidmem + pre1);
        WRITE_REGISTER_UCHAR(vidmem + pre1, iColor);
        pre1 += 80;
    }

    return TRUE;
}
