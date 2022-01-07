
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {double member_0; double member_1; double member_2; double member_3; double Width; double Height; int Y; int X; } ;
typedef double REAL ;
typedef int HDC ;
typedef scalar_t__ GpUnit ;
typedef scalar_t__ GpStatus ;
typedef TYPE_1__ GpRectF ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;


 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int EmfTypeEmfPlusOnly ;
 scalar_t__ GdipDeleteGraphics (int *) ;
 scalar_t__ GdipDisposeImage (int *) ;
 scalar_t__ GdipGetImageBounds (int *,TYPE_1__*,scalar_t__*) ;
 scalar_t__ GdipGetImageGraphicsContext (int *,int **) ;
 scalar_t__ GdipGetImageHorizontalResolution (int *,double*) ;
 scalar_t__ GdipGetImageVerticalResolution (int *,double*) ;
 scalar_t__ GdipRecordMetafile (int ,int ,TYPE_1__ const*,int ,char const*,int **) ;
 int MetafileFrameUnitInch ;
 scalar_t__ Ok ;
 scalar_t__ UnitPixel ;
 scalar_t__ broken (int) ;
 int expect (scalar_t__,scalar_t__) ;
 int expectf (double,int ) ;
 int expectf_ (double,double,double) ;
 int ok (int,char*,double) ;

__attribute__((used)) static void test_frameunit(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc;
    static const GpRectF frame = {0.0, 0.0, 5.0, 5.0};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GpUnit unit;
    REAL dpix, dpiy;
    GpRectF bounds;

    hdc = CreateCompatibleDC(0);

    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitInch, description, &metafile);
    expect(Ok, stat);

    DeleteDC(hdc);

    if (stat != Ok)
        return;

    stat = GdipGetImageBounds((GpImage*)metafile, &bounds, &unit);
    expect(Ok, stat);
    expect(UnitPixel, unit);
    expectf(0.0, bounds.X);
    expectf(0.0, bounds.Y);
    ok(bounds.Width == 1.0 || broken(bounds.Width == 0.0) ,
        "expected 1.0, got %f\n", bounds.Width);
    ok(bounds.Height == 1.0 || broken(bounds.Height == 0.0) ,
        "expected 1.0, got %f\n", bounds.Height);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    stat = GdipGetImageBounds((GpImage*)metafile, &bounds, &unit);
    expect(Ok, stat);
    expect(UnitPixel, unit);
    expectf(0.0, bounds.X);
    expectf(0.0, bounds.Y);
    ok(bounds.Width == 1.0 || broken(bounds.Width == 0.0) ,
        "expected 1.0, got %f\n", bounds.Width);
    ok(bounds.Height == 1.0 || broken(bounds.Height == 0.0) ,
        "expected 1.0, got %f\n", bounds.Height);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipGetImageHorizontalResolution((GpImage*)metafile, &dpix);
    expect(Ok, stat);

    stat = GdipGetImageVerticalResolution((GpImage*)metafile, &dpiy);
    expect(Ok, stat);

    stat = GdipGetImageBounds((GpImage*)metafile, &bounds, &unit);
    expect(Ok, stat);
    expect(UnitPixel, unit);
    expectf(0.0, bounds.X);
    expectf(0.0, bounds.Y);
    expectf_(5.0 * dpix, bounds.Width, 1.0);
    expectf_(5.0 * dpiy, bounds.Height, 1.0);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
