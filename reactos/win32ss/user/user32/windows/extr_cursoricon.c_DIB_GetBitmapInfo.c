
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int bcBitCount; int bcHeight; int bcWidth; } ;
struct TYPE_4__ {int biSize; scalar_t__ biCompression; int biBitCount; int biHeight; int biWidth; } ;
typedef int LONG ;
typedef scalar_t__ DWORD ;
typedef int BITMAPV5HEADER ;
typedef int BITMAPV4HEADER ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPCOREHEADER ;


 int ERR (char*,int) ;

__attribute__((used)) static int DIB_GetBitmapInfo( const BITMAPINFOHEADER *header, LONG *width,
                              LONG *height, WORD *bpp, DWORD *compr )
{
    if (header->biSize == sizeof(BITMAPCOREHEADER))
    {
        const BITMAPCOREHEADER *core = (const BITMAPCOREHEADER *)header;
        *width = core->bcWidth;
        *height = core->bcHeight;
        *bpp = core->bcBitCount;
        *compr = 0;
        return 0;
    }
    else if (header->biSize == sizeof(BITMAPINFOHEADER) ||
             header->biSize == sizeof(BITMAPV4HEADER) ||
             header->biSize == sizeof(BITMAPV5HEADER))
    {
        *width = header->biWidth;
        *height = header->biHeight;
        *bpp = header->biBitCount;
        *compr = header->biCompression;
        return 1;
    }
    ERR("(%d): unknown/wrong size for header\n", header->biSize );
    return -1;
}
