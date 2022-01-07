
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;
typedef int PUCHAR ;
typedef int LONG ;
typedef int INT ;
typedef int BOOL ;


 scalar_t__ GRA_D ;
 scalar_t__ GRA_I ;
 int READ_REGISTER_UCHAR (int) ;
 int TRUE ;
 int WRITE_PORT_UCHAR (int ,int) ;
 int WRITE_REGISTER_UCHAR (int,int ) ;
 int* endmasks ;
 int memset (int,int ,int) ;
 int mod8 (int) ;
 int* startmasks ;
 int vidmem ;
 int* xconv ;
 int* y80 ;

BOOL vgaHLine(INT x, INT y, INT len, UCHAR c)
{
    ULONG orgx, pre1, midpre1;

    LONG ileftpix, imidpix, irightpix;

    orgx = x;
    ileftpix = 7 - mod8(x-1);
    irightpix = mod8(x+len);
    imidpix = (len-ileftpix-irightpix) / 8;

    pre1 = xconv[(x-1)&~7] + y80[y];



    if ( (ileftpix+irightpix) > len )
    {
        int mask = startmasks[ileftpix] & endmasks[irightpix];

        WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D,mask);

        READ_REGISTER_UCHAR(vidmem + pre1);
        WRITE_REGISTER_UCHAR(vidmem + pre1, c);

        return TRUE;
    }


    if ( ileftpix > 0 )
    {

        WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D,startmasks[ileftpix]);

        READ_REGISTER_UCHAR(vidmem + pre1);
        WRITE_REGISTER_UCHAR(vidmem + pre1, c);


        x = orgx + 8;
    }

    if ( imidpix > 0 )
    {
        midpre1 = xconv[x] + y80[y];


        WRITE_PORT_UCHAR((PUCHAR)GRA_I, 0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D, 0xff);
        memset(vidmem+midpre1, c, imidpix);
    }

    if ( irightpix > 0 )
    {
        x = orgx + len - irightpix;
        pre1 = xconv[x] + y80[y];


        WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D, endmasks[irightpix]);
        READ_REGISTER_UCHAR(vidmem + pre1);
        WRITE_REGISTER_UCHAR(vidmem + pre1, c);
    }

    return TRUE;
}
