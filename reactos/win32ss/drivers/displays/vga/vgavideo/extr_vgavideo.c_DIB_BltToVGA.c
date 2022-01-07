
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int* PUCHAR ;
typedef size_t LONG ;


 scalar_t__ GRA_D ;
 scalar_t__ GRA_I ;
 int READ_REGISTER_UCHAR (scalar_t__) ;
 int WRITE_PORT_UCHAR (int*,int) ;
 int WRITE_REGISTER_UCHAR (scalar_t__,int) ;
 int* maskbit ;
 scalar_t__ vidmem ;
 scalar_t__* xconv ;
 scalar_t__* y80 ;

void DIB_BltToVGA(int x, int y, int w, int h, void *b, int Source_lDelta, int StartMod)
{
    PUCHAR pb, opb = b;
    LONG i, j;
    LONG x2 = x + w;
    LONG y2 = y + h;
    ULONG offset;

    for (i = x; i < x2; i++)
    {
        pb = opb;
        offset = xconv[i] + y80[y];

        WRITE_PORT_UCHAR((PUCHAR)GRA_I, 0x08);
        WRITE_PORT_UCHAR((PUCHAR)GRA_D, maskbit[i]);

        if (StartMod == ((i - x) % 2))
        {
            for (j = y; j < y2; j++)
            {
                READ_REGISTER_UCHAR(vidmem + offset);
                WRITE_REGISTER_UCHAR(vidmem + offset, (*pb & 0xf0) >> 4);
                offset += 80;
                pb += Source_lDelta;
            }
        }
        else
        {
            for (j = y; j < y2; j++)
            {
                READ_REGISTER_UCHAR(vidmem + offset);
                WRITE_REGISTER_UCHAR(vidmem + offset, *pb & 0x0f);
                offset += 80;
                pb += Source_lDelta;
            }
        }

        if (StartMod != ((i - x) % 2))
            opb++;
    }
}
