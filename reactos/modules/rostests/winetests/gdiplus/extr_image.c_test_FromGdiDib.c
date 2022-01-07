
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rbmi ;
struct TYPE_4__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef int RGBQUAD ;
typedef scalar_t__ PixelFormat ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef int BYTE ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 scalar_t__ GdipCreateBitmapFromGdiDib (TYPE_2__*,int *,int **) ;
 int GdipDisposeImage (int *) ;
 scalar_t__ GdipGetImagePixelFormat (int *,scalar_t__*) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 scalar_t__ PixelFormat16bppRGB555 ;
 scalar_t__ PixelFormat1bppIndexed ;
 scalar_t__ PixelFormat24bppRGB ;
 scalar_t__ PixelFormat32bppRGB ;
 scalar_t__ PixelFormat4bppIndexed ;
 scalar_t__ PixelFormat8bppIndexed ;
 int expect (scalar_t__,scalar_t__) ;
 int memset (int *,int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_FromGdiDib(void)
{
    GpBitmap *bm;
    GpStatus stat;
    BYTE buff[400];
    BYTE rbmi[sizeof(BITMAPINFOHEADER)+256*sizeof(RGBQUAD)];
    BITMAPINFO *bmi = (BITMAPINFO*)rbmi;
    PixelFormat format;

    bm = ((void*)0);

    memset(rbmi, 0, sizeof(rbmi));

    bmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi->bmiHeader.biWidth = 10;
    bmi->bmiHeader.biHeight = 10;
    bmi->bmiHeader.biPlanes = 1;
    bmi->bmiHeader.biBitCount = 32;
    bmi->bmiHeader.biCompression = BI_RGB;

    stat = GdipCreateBitmapFromGdiDib(((void*)0), buff, &bm);
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromGdiDib(bmi, ((void*)0), &bm);
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromGdiDib(bmi, buff, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, stat);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = GdipGetImagePixelFormat((GpImage*)bm, &format);
        expect(Ok, stat);
        expect(PixelFormat32bppRGB, format);

        GdipDisposeImage((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 24;
    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, stat);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = GdipGetImagePixelFormat((GpImage*)bm, &format);
        expect(Ok, stat);
        expect(PixelFormat24bppRGB, format);

        GdipDisposeImage((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 16;
    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, stat);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = GdipGetImagePixelFormat((GpImage*)bm, &format);
        expect(Ok, stat);
        expect(PixelFormat16bppRGB555, format);

        GdipDisposeImage((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 8;
    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, stat);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = GdipGetImagePixelFormat((GpImage*)bm, &format);
        expect(Ok, stat);
        expect(PixelFormat8bppIndexed, format);

        GdipDisposeImage((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 4;
    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, stat);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = GdipGetImagePixelFormat((GpImage*)bm, &format);
        expect(Ok, stat);
        expect(PixelFormat4bppIndexed, format);

        GdipDisposeImage((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 1;
    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(Ok, stat);
    ok(((void*)0) != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = GdipGetImagePixelFormat((GpImage*)bm, &format);
        expect(Ok, stat);
        expect(PixelFormat1bppIndexed, format);

        GdipDisposeImage((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 0;
    stat = GdipCreateBitmapFromGdiDib(bmi, buff, &bm);
    expect(InvalidParameter, stat);
}
