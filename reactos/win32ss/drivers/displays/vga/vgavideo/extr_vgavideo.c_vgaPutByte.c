
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef int PUCHAR ;
typedef size_t INT ;


 scalar_t__ GRA_D ;
 scalar_t__ GRA_I ;
 int WRITE_PORT_UCHAR (int ,int) ;
 int WRITE_REGISTER_UCHAR (scalar_t__,int ) ;
 scalar_t__ vidmem ;
 scalar_t__* xconv ;
 scalar_t__* y80 ;

VOID vgaPutByte(INT x, INT y, UCHAR c)
{
    ULONG offset;

    offset = xconv[x]+y80[y];


    WRITE_PORT_UCHAR((PUCHAR)GRA_I,0x08);
    WRITE_PORT_UCHAR((PUCHAR)GRA_D,0xff);

    WRITE_REGISTER_UCHAR(vidmem + offset, c);
}
