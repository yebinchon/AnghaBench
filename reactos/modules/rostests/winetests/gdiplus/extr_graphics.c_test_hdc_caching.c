
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int biSize; int biHeight; int biWidth; int biBitCount; int biPlanes; scalar_t__ biClrUsed; int biCompression; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef int * HRGN ;
typedef int * HDC ;
typedef int * HBITMAP ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef TYPE_2__ BITMAPINFO ;
typedef int ARGB ;


 int BI_RGB ;
 int * CreateCompatibleDC (int ) ;
 int * CreateDIBSection (int *,TYPE_2__*,int ,void**,int *,int ) ;
 int * CreateRectRgn (int ,int ,int,int) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipFillRectangleI (int *,int *,int ,int ,int,int) ;
 int OffsetClipRgn (int *,int,int) ;
 int Ok ;
 int SelectClipRgn (int *,int *) ;
 int SelectObject (int *,int *) ;
 int SetViewportOrgEx (int *,int,int,int *) ;
 int expect (int,int ) ;
 int memset (int *,int ,int) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_hdc_caching(void)
{
    GpStatus status;
    HDC hdc;
    HBITMAP hbm;
    GpGraphics *graphics;
    ULONG *bits;
    BITMAPINFO bmi;
    HRGN hrgn;
    GpBrush *brush;

    hdc = CreateCompatibleDC(0);
    ok(hdc != ((void*)0), "CreateCompatibleDC failed\n");
    bmi.bmiHeader.biSize = sizeof(bmi.bmiHeader);
    bmi.bmiHeader.biHeight = -5;
    bmi.bmiHeader.biWidth = 5;
    bmi.bmiHeader.biBitCount = 32;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biClrUsed = 0;

    hbm = CreateDIBSection(hdc, &bmi, DIB_RGB_COLORS, (void**)&bits, ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBSection failed\n");

    SelectObject(hdc, hbm);

    SetViewportOrgEx(hdc, 1, 1, ((void*)0));

    hrgn = CreateRectRgn(0, 0, 3, 3);
    SelectClipRgn(hdc, hrgn);
    DeleteObject(hrgn);

    status = GdipCreateSolidFill((ARGB)0xffaaaaaa, (GpSolidFill**)&brush);
    expect(Ok, status);

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    memset(bits, 0, sizeof(*bits) * 25);
    status = GdipFillRectangleI(graphics, brush, 0, 0, 4, 4);
    expect(Ok, status);

    expect(0, bits[0]);
    expect(0xffaaaaaa, bits[6]);
    expect(0xffaaaaaa, bits[12]);
    expect(0, bits[18]);
    expect(0, bits[24]);

    SetViewportOrgEx(hdc, 0, 0, ((void*)0));
    OffsetClipRgn(hdc, 2, 2);

    memset(bits, 0, sizeof(*bits) * 25);
    status = GdipFillRectangleI(graphics, brush, 0, 0, 4, 4);
    expect(Ok, status);

    expect(0, bits[0]);
    expect(0xffaaaaaa, bits[6]);
    expect(0xffaaaaaa, bits[12]);
    expect(0, bits[18]);
    expect(0, bits[24]);

    GdipDeleteGraphics(graphics);

    GdipDeleteBrush(brush);

    DeleteDC(hdc);
    DeleteObject(hbm);
}
