
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_11__ {double member_0; double member_1; } ;
struct TYPE_10__ {double member_0; double member_1; double member_2; double member_3; int X; int Y; int Width; int Height; } ;
typedef int HDC ;
typedef int GraphicsState ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef int GpRegion ;
typedef TYPE_1__ GpRectF ;
typedef TYPE_2__ GpPointF ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int GpBitmap ;
typedef int ARGB ;


 int CombineModeIntersect ;
 int CombineModeReplace ;
 int CombineModeXor ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int EmfTypeEmfPlusOnly ;
 int GdipBitmapGetPixel (int *,int,int,int*) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipCreateRegionRect (TYPE_1__*,int **) ;
 int GdipCreateSolidFill (int,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipFillRectangle (int *,int *,int,int,int,int) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipGetVisibleClipBounds (int *,TYPE_1__*) ;
 int GdipRecordMetafile (int ,int ,TYPE_1__ const*,int ,char const*,int **) ;
 int GdipRestoreGraphics (int *,int ) ;
 int GdipSaveGraphics (int *,int *) ;
 int GdipSetClipRect (int *,int,int,int,int,int ) ;
 int GdipSetClipRegion (int *,int *,int ) ;
 int MetafileFrameUnitPixel ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int UnitPixel ;
 int check_metafile (int *,int ,char*,TYPE_2__ const*,TYPE_1__ const*,int ) ;
 int clipping_records ;
 int expect (int,int) ;
 int ok (int,char*,int) ;
 int play_metafile (int *,int *,int ,char*,TYPE_2__ const*,TYPE_1__ const*,int ) ;
 int sync_metafile (int **,char*) ;

__attribute__((used)) static void test_clipping(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    GpBitmap *bitmap;
    GpRegion *region;
    GpBrush *brush;
    GpRectF rect;
    ARGB color;
    HDC hdc;
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{100.0,0.0},{0.0,100.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GraphicsState state;

    hdc = CreateCompatibleDC(0);

    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    expect(Ok, stat);

    DeleteDC(hdc);

    if (stat != Ok)
        return;

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    stat = GdipSaveGraphics(graphics, &state);
    expect(Ok, stat);

    stat = GdipGetVisibleClipBounds(graphics, &rect);
    expect(Ok, stat);
    ok(rect.X == -0x400000, "rect.X = %f\n", rect.X);
    ok(rect.Y == -0x400000, "rect.Y = %f\n", rect.Y);
    ok(rect.Width == 0x800000, "rect.Width = %f\n", rect.Width);
    ok(rect.Height == 0x800000, "rect.Height = %f\n", rect.Height);

    stat = GdipSetClipRect(graphics, 30, 30, 10, 10, CombineModeReplace);
    expect(Ok, stat);

    stat = GdipGetVisibleClipBounds(graphics, &rect);
    expect(Ok, stat);
    ok(rect.X == 30, "rect.X = %f\n", rect.X);
    ok(rect.Y == 30, "rect.Y = %f\n", rect.Y);
    ok(rect.Width == 10, "rect.Width = %f\n", rect.Width);
    ok(rect.Height == 10, "rect.Height = %f\n", rect.Height);

    stat = GdipCreateSolidFill((ARGB)0xff000000, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangle(graphics, brush, 0, 0, 100, 100);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);

    stat = GdipRestoreGraphics(graphics, state);
    expect(Ok, stat);

    stat = GdipSetClipRect(graphics, 30, 30, 10, 10, CombineModeXor);
    expect(Ok, stat);

    stat = GdipCreateSolidFill((ARGB)0xff0000ff, (GpSolidFill**)&brush);
    expect(Ok, stat);

    stat = GdipFillRectangle(graphics, brush, 30, 30, 20, 10);
    expect(Ok, stat);

    stat = GdipDeleteBrush(brush);
    expect(Ok, stat);

    stat = GdipCreateRegionRect(&rect, &region);
    expect(Ok, stat);

    stat = GdipSetClipRegion(graphics, region, CombineModeIntersect);
    expect(Ok, stat);

    stat = GdipDeleteRegion(region);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    check_metafile(metafile, clipping_records, "clipping metafile", dst_points, &frame, UnitPixel);

    sync_metafile(&metafile, "clipping.emf");

    stat = GdipCreateBitmapFromScan0(100, 100, 0, PixelFormat32bppARGB, ((void*)0), &bitmap);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap, &graphics);
    expect(Ok, stat);

    play_metafile(metafile, graphics, clipping_records, "clipping playback", dst_points, &frame, UnitPixel);

    stat = GdipBitmapGetPixel(bitmap, 80, 80, &color);
    expect(Ok, stat);
    expect(0, color);

    stat = GdipBitmapGetPixel(bitmap, 35, 35, &color);
    expect(Ok, stat);
    expect(0xff000000, color);

    stat = GdipBitmapGetPixel(bitmap, 45, 35, &color);
    expect(Ok, stat);
    expect(0xff0000ff, color);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)bitmap);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
