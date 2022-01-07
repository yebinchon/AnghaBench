
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dib ;
struct TYPE_6__ {int biHeight; int biWidth; } ;
struct TYPE_5__ {int bmBitsPixel; int* bmBits; } ;
struct TYPE_7__ {TYPE_2__ dsBmih; TYPE_1__ dsBm; } ;
typedef int HBITMAP ;
typedef TYPE_3__ DIBSECTION ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetObjectW (int ,int,TYPE_3__*) ;
 int TRUE ;

__attribute__((used)) static BOOL prepare_alpha (HBITMAP bmp, BOOL* hasAlpha)
{
    DIBSECTION dib;
    int n;
    BYTE* p;

    *hasAlpha = FALSE;

    if (!bmp || GetObjectW( bmp, sizeof(dib), &dib ) != sizeof(dib))
        return FALSE;

    if(dib.dsBm.bmBitsPixel != 32)

        return TRUE;

    p = dib.dsBm.bmBits;
    n = dib.dsBmih.biHeight * dib.dsBmih.biWidth;

    while (n-- > 0)
    {
        int a = p[3]+1;
        p[0] = (p[0] * a) >> 8;
        p[1] = (p[1] * a) >> 8;
        p[2] = (p[2] * a) >> 8;
        p += 4;

        if (a != 256)
            *hasAlpha = TRUE;
    }

    return TRUE;
}
