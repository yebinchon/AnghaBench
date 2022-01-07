
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLATEOBJ ;
typedef size_t ULONG ;
typedef int* PUCHAR ;


 scalar_t__ GRA_D ;
 scalar_t__ GRA_I ;
 int READ_REGISTER_UCHAR (size_t) ;
 int WRITE_PORT_UCHAR (int*,int) ;
 int WRITE_REGISTER_UCHAR (size_t,int ) ;
 int XLATEOBJ_iXlate (int *,int) ;
 int* maskbit ;
 size_t vidmem ;
 size_t* xconv ;
 size_t* y80 ;

void DIB_BltToVGAWithXlate(int x, int y, int w, int h, void *b, int Source_lDelta, XLATEOBJ* Xlate)
{
    PUCHAR pb, opb = b;
    ULONG i, j;
    ULONG x2 = x + w;
    ULONG y2 = y + h;
    ULONG offset;

    for (i = x; i < x2; i++)
    {
        pb = opb;
        offset = xconv[i] + y80[y];

        WRITE_PORT_UCHAR((PUCHAR)GRA_I, 0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D, maskbit[i]);

        if (0 == ((i - x) % 2))
        {
            for (j = y; j < y2; j++)
            {
                READ_REGISTER_UCHAR(vidmem + offset);
                WRITE_REGISTER_UCHAR(vidmem + offset, XLATEOBJ_iXlate(Xlate, (*pb & 0xf0) >> 4));
                offset += 80;
                pb += Source_lDelta;
            }
        }
        else
        {
            for (j = y; j < y2; j++)
            {
                READ_REGISTER_UCHAR(vidmem + offset);
                WRITE_REGISTER_UCHAR(vidmem + offset, XLATEOBJ_iXlate(Xlate, *pb & 0x0f));
                offset += 80;
                pb += Source_lDelta;
            }
        }

        if (0 != ((i - x) % 2))
            opb++;
    }
}
