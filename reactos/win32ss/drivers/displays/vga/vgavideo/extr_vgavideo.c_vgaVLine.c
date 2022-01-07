
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PUCHAR ;
typedef size_t INT ;
typedef int BOOL ;


 scalar_t__ GRA_D ;
 scalar_t__ GRA_I ;
 int READ_REGISTER_UCHAR (size_t) ;
 int TRUE ;
 int WRITE_PORT_UCHAR (int ,int) ;
 int WRITE_REGISTER_UCHAR (size_t,int ) ;
 int* maskbit ;
 int vgaSetBitMaskRegister (int) ;
 size_t vidmem ;
 size_t* xconv ;
 size_t* y80 ;

BOOL vgaVLine(INT x, INT y, INT len, UCHAR c)
{
    INT offset, i;

    offset = xconv[x]+y80[y];




    WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
    WRITE_PORT_UCHAR((PUCHAR)GRA_D,maskbit[x]);


    for(i=y; i<y+len; i++)
    {
        READ_REGISTER_UCHAR(vidmem + offset);
        WRITE_REGISTER_UCHAR(vidmem + offset, c);
        offset += 80;
    }

    return TRUE;
}
