
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int biSize; int biBitCount; int biClrUsed; int biHeight; int biSizeImage; } ;
struct TYPE_7__ {TYPE_1__ bmiHeader; } ;
typedef int * PVOID ;
typedef int * PUINT ;
typedef TYPE_2__* PBITMAPINFO ;
typedef int * HDC ;
typedef int HBRUSH ;
typedef int * HBITMAP ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;


 int FALSE ;
 int * GetDC (int *) ;
 int GetDIBits (int *,int *,int ,int ,int *,TYPE_2__*,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int * NtGdiGetObjectBitmapHandle (int ,int *) ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;

BOOL
get_brush_bitmap_info(
    HBRUSH hbr,
    PBITMAPINFO pbmi,
    PVOID *ppvBits,
    PUINT puUsage)
{
    HBITMAP hbmp;
    HDC hdc;


    hbmp = NtGdiGetObjectBitmapHandle(hbr, puUsage);
    if (hbmp == ((void*)0))
        return FALSE;

    hdc = GetDC(((void*)0));
    if (hdc == ((void*)0))
        return FALSE;


    ZeroMemory(pbmi, sizeof(*pbmi));
    pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);


    if (!GetDIBits(hdc, hbmp, 0, 0, ((void*)0), pbmi, *puUsage))
        return FALSE;


    *ppvBits = HeapAlloc(GetProcessHeap(), 0, pbmi->bmiHeader.biSizeImage);
    if (*ppvBits == ((void*)0))
        return FALSE;


    if (!GetDIBits(hdc, hbmp, 0, pbmi->bmiHeader.biHeight, *ppvBits, pbmi, *puUsage))
    {
        HeapFree(GetProcessHeap(), 0, *ppvBits);
        *ppvBits = ((void*)0);
        return FALSE;
    }


    if (pbmi->bmiHeader.biBitCount <= 8)
    {
        pbmi->bmiHeader.biClrUsed = 1 << pbmi->bmiHeader.biBitCount;
    }

    return TRUE;
}
