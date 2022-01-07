
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int rbmi ;
typedef int ptf ;
struct TYPE_9__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_11__ {TYPE_1__ bmiHeader; } ;
struct TYPE_10__ {int X; int Y; } ;
typedef int HDC ;
typedef int GpStatus ;
typedef TYPE_2__ GpPointF ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef TYPE_2__ BYTE ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_4__ BITMAPINFO ;


 int BI_RGB ;
 int GdipCreateBitmapFromGdiDib (TYPE_4__*,TYPE_2__*,int **) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDrawImagePointsRect (int *,int *,TYPE_2__*,int,int ,int ,int,int,int ,int *,int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int NotImplemented ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int UnitPixel ;
 int expect (int ,int ) ;
 int hwnd ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_GdipDrawImagePointsRect(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpPointF ptf[4];
    GpBitmap *bm = ((void*)0);
    BYTE rbmi[sizeof(BITMAPINFOHEADER)];
    BYTE buff[400];
    BITMAPINFO *bmi = (BITMAPINFO*)rbmi;
    HDC hdc = GetDC( hwnd );
    if (!hdc)
        return;

    memset(rbmi, 0, sizeof(rbmi));
    bmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi->bmiHeader.biWidth = 10;
    bmi->bmiHeader.biHeight = 10;
    bmi->bmiHeader.biPlanes = 1;
    bmi->bmiHeader.biBitCount = 32;
    bmi->bmiHeader.biCompression = BI_RGB;
    status = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, status);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ptf[0].X = 0;
    ptf[0].Y = 0;
    ptf[1].X = 10;
    ptf[1].Y = 0;
    ptf[2].X = 0;
    ptf[2].Y = 10;
    ptf[3].X = 10;
    ptf[3].Y = 10;
    status = GdipDrawImagePointsRect(graphics, (GpImage*)bm, ptf, 4, 0, 0, 10, 10, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(NotImplemented, status);
    status = GdipDrawImagePointsRect(graphics, (GpImage*)bm, ptf, 2, 0, 0, 10, 10, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipDrawImagePointsRect(graphics, (GpImage*)bm, ptf, 3, 0, 0, 10, 10, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(Ok, status);
    status = GdipDrawImagePointsRect(graphics, ((void*)0), ptf, 3, 0, 0, 10, 10, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipDrawImagePointsRect(graphics, (GpImage*)bm, ((void*)0), 3, 0, 0, 10, 10, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipDrawImagePointsRect(graphics, (GpImage*)bm, ptf, 3, 0, 0, 0, 0, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(Ok, status);
    memset(ptf, 0, sizeof(ptf));
    status = GdipDrawImagePointsRect(graphics, (GpImage*)bm, ptf, 3, 0, 0, 10, 10, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(Ok, status);

    GdipDisposeImage((GpImage*)bm);
    GdipDeleteGraphics(graphics);
    ReleaseDC(hwnd, hdc);
}
