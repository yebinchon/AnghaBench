
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_data {int bpp; struct bitmap_data* alt_data; scalar_t__ bits; int format; } ;
typedef int UINT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GUID_WICPixelFormat1bppIndexed ;
 int GUID_WICPixelFormat2bppIndexed ;
 int GUID_WICPixelFormat32bppBGR ;
 int GUID_WICPixelFormat32bppGrayFloat ;
 int GUID_WICPixelFormat4bppIndexed ;
 int GUID_WICPixelFormat8bppIndexed ;
 int GUID_WICPixelFormatBlackWhite ;
 scalar_t__ IsEqualGUID (int ,int *) ;
 int TRUE ;
 scalar_t__ memcmp (scalar_t__,int const*,int) ;
 int near_equal (float const,float const) ;
 int printf (char*,...) ;
 int winetest_debug ;

__attribute__((used)) static BOOL compare_bits(const struct bitmap_data *expect, UINT buffersize, const BYTE *converted_bits)
{
    BOOL equal;

    if (IsEqualGUID(expect->format, &GUID_WICPixelFormat32bppBGR))
    {

        UINT i;
        const DWORD *a=(const DWORD*)expect->bits, *b=(const DWORD*)converted_bits;
        equal=TRUE;
        for (i=0; i<(buffersize/4); i++)
            if ((a[i]&0xffffff) != (b[i]&0xffffff))
            {
                equal = FALSE;
                break;
            }
    }
    else if (IsEqualGUID(expect->format, &GUID_WICPixelFormat32bppGrayFloat))
    {
        UINT i;
        const float *a=(const float*)expect->bits, *b=(const float*)converted_bits;
        equal=TRUE;
        for (i=0; i<(buffersize/4); i++)
            if (!near_equal(a[i], b[i]))
            {
                equal = FALSE;
                break;
            }
    }
    else if (IsEqualGUID(expect->format, &GUID_WICPixelFormatBlackWhite) ||
             IsEqualGUID(expect->format, &GUID_WICPixelFormat1bppIndexed))
    {
        UINT i;
        const BYTE *a=(const BYTE*)expect->bits, *b=(const BYTE*)converted_bits;
        equal=TRUE;
        for (i=0; i<buffersize; i++)
            if (a[i] != b[i] && b[i] != 0xff )
            {
                equal = FALSE;
                break;
            }
    }
    else if (IsEqualGUID(expect->format, &GUID_WICPixelFormat2bppIndexed) ||
             IsEqualGUID(expect->format, &GUID_WICPixelFormat4bppIndexed) ||
             IsEqualGUID(expect->format, &GUID_WICPixelFormat8bppIndexed))
    {
        UINT i;
        const BYTE *a=(const BYTE*)expect->bits, *b=(const BYTE*)converted_bits;
        equal=TRUE;

        for (i=0; i<buffersize; i++)
            if (a[i] != b[i])
            {
                equal = FALSE;
                break;
            }
    }
    else
        equal = (memcmp(expect->bits, converted_bits, buffersize) == 0);

    if (!equal && expect->alt_data)
        equal = compare_bits(expect->alt_data, buffersize, converted_bits);

    if (!equal && winetest_debug > 1)
    {
        UINT i, bps;
        bps = expect->bpp / 8;
        if (!bps) bps = buffersize;
        printf("converted_bits (%u bytes):\n    ", buffersize);
        for (i = 0; i < buffersize; i++)
        {
            printf("%u,", converted_bits[i]);
            if (!((i + 1) % 32)) printf("\n    ");
            else if (!((i+1) % bps)) printf(" ");
        }
        printf("\n");
    }

    return equal;
}
