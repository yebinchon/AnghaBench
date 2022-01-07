
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int todo_wine ;
typedef int stat ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_9__ {double member_0; double member_1; } ;
struct TYPE_8__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef int REAL ;
typedef int InvalidParameter ;
typedef int HDC ;
typedef int GpUnit ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef TYPE_1__ GpRectF ;
typedef TYPE_2__ GpPointF ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int GpBitmap ;
typedef int ARGB ;


 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int EmfTypeEmfPlusOnly ;
 int GdipBitmapGetPixel (int *,int,int,int*) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipCreateSolidFill (int,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipFillRectangle (int *,int *,int,int,int,int) ;
 int GdipFillRectangleI (int *,int *,int,int,int,int) ;
 int GdipGetDpiX (int *,int *) ;
 int GdipGetDpiY (int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipGetImageHeight (int *,int *) ;
 int GdipGetImageHorizontalResolution (int *,int *) ;
 int GdipGetImageVerticalResolution (int *,int *) ;
 int GdipGetImageWidth (int *,int *) ;
 int GdipGetPageScale (int *,int *) ;
 int GdipGetPageUnit (int *,int*) ;
 int GdipRecordMetafile (int ,int ,TYPE_1__ const*,int ,char const*,int **) ;
 int GdipSetPageScale (int *,double) ;
 int GdipSetPageUnit (int *,int) ;
 int MetafileFrameUnitInch ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int UnitDisplay ;
 int UnitInch ;
 int UnitPixel ;
 int check_metafile (int *,int ,char*,TYPE_2__ const*,TYPE_1__ const*,int) ;
 int expect (int,int) ;
 int expectf (double,int ) ;
 int pagetransform_records ;
 int play_metafile (int *,int *,int ,char*,TYPE_2__ const*,TYPE_1__ const*,int) ;
 int sync_metafile (int **,char*) ;

__attribute__((used)) static void test_pagetransform(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc;
    static const GpRectF frame = {0.0, 0.0, 5.0, 5.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{100.0,0.0},{0.0,100.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GpBitmap *bitmap;
    ARGB color;
    GpBrush *brush;
    GpUnit unit;
    REAL scale, dpix, dpiy;
    UINT width, height;

    hdc = CreateCompatibleDC(0);

    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitInch, description, &metafile);
    expect(Ok, stat);

    DeleteDC(hdc);

    if (stat != Ok)
        return;

    stat = GdipGetImageHorizontalResolution((GpImage*)metafile, &dpix);
    todo_wine expect(InvalidParameter, stat);

    stat = GdipGetImageVerticalResolution((GpImage*)metafile, &dpiy);
    todo_wine expect(InvalidParameter, stat);

    stat = GdipGetImageWidth((GpImage*)metafile, &width);
    todo_wine expect(InvalidParameter, stat);

    stat = GdipGetImageHeight((GpImage*)metafile, &height);
    todo_wine expect(InvalidParameter, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);


    stat = GdipGetPageUnit(graphics, &unit);
    expect(Ok, stat);
    expect(UnitDisplay, unit);

    stat = GdipGetPageScale(graphics, &scale);
    expect(Ok, stat);
    expectf(1.0, scale);

    stat = GdipGetDpiX(graphics, &dpix);
    expect(Ok, stat);
    expectf(96.0, dpix);

    stat = GdipGetDpiY(graphics, &dpiy);
    expect(Ok, stat);
    expectf(96.0, dpiy);

    stat = GdipCreateSolidFill((ARGB)0xff0000ff, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangleI(graphics, brush, 1, 2, 1, 1);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);


    stat = GdipSetPageUnit(graphics, UnitPixel);
    expect(Ok, stat);

    stat = GdipGetPageUnit(graphics, &unit);
    expect(Ok, stat);
    expect(UnitPixel, unit);

    stat = GdipCreateSolidFill((ARGB)0xff00ff00, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangleI(graphics, brush, 0, 1, 1, 1);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);


    stat = GdipSetPageScale(graphics, 3.0);
    expect(Ok, stat);

    stat = GdipGetPageScale(graphics, &scale);
    expect(Ok, stat);
    expectf(3.0, scale);

    stat = GdipCreateSolidFill((ARGB)0xff00ffff, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangleI(graphics, brush, 0, 1, 2, 2);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);


    stat = GdipSetPageUnit(graphics, UnitInch);
    expect(Ok, stat);

    stat = GdipGetPageUnit(graphics, &unit);
    expect(Ok, stat);
    expect(UnitInch, unit);

    stat = GdipCreateSolidFill((ARGB)0xffff0000, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangle(graphics, brush, 1.0/96.0, 0, 1, 1);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);


    stat = GdipSetPageUnit(graphics, UnitDisplay);
    expect(Ok, stat);

    stat = GdipGetPageUnit(graphics, &unit);
    expect(Ok, stat);
    expect(UnitDisplay, unit);

    stat = GdipCreateSolidFill((ARGB)0xffff00ff, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangle(graphics, brush, 3, 3, 2, 2);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    check_metafile(metafile, pagetransform_records, "pagetransform metafile", dst_points, &frame, UnitPixel);

    sync_metafile(&metafile, "pagetransform.emf");

    stat = GdipCreateBitmapFromScan0(100, 100, 0, PixelFormat32bppARGB, ((void*)0), &bitmap);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap, &graphics);
    expect(Ok, stat);

    play_metafile(metafile, graphics, pagetransform_records, "pagetransform playback", dst_points, &frame, UnitPixel);

    stat = GdipBitmapGetPixel(bitmap, 50, 50, &color);
    expect(Ok, stat);
    expect(0, color);

    stat = GdipBitmapGetPixel(bitmap, 30, 50, &color);
    expect(Ok, stat);
    expect(0xff0000ff, color);

    stat = GdipBitmapGetPixel(bitmap, 10, 30, &color);
    expect(Ok, stat);
    expect(0xff00ff00, color);

    stat = GdipBitmapGetPixel(bitmap, 20, 80, &color);
    expect(Ok, stat);
    expect(0xff00ffff, color);

    stat = GdipBitmapGetPixel(bitmap, 80, 20, &color);
    expect(Ok, stat);
    expect(0xffff0000, color);

    stat = GdipBitmapGetPixel(bitmap, 80, 80, &color);
    expect(Ok, stat);
    expect(0xffff00ff, color);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)bitmap);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
