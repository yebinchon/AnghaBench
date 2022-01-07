
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int biWidth; int biBitCount; int biPlanes; int biHeight; } ;
typedef TYPE_1__ BITMAPINFOHEADER ;



ULONG
GetBitmapSize(BITMAPINFOHEADER *pbih)
{
    ULONG WidthBits, WidthBytes;

    WidthBits = pbih->biWidth * pbih->biBitCount * pbih->biPlanes;
    WidthBytes = ((WidthBits + 31) & ~ 31) >> 3;

    return pbih->biHeight * WidthBytes;
}
