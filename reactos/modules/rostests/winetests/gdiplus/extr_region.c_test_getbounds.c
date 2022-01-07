
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double X; double Y; double Height; double Width; } ;
typedef double REAL ;
typedef int HDC ;
typedef double GpStatus ;
typedef int GpRegion ;
typedef TYPE_1__ GpRectF ;
typedef int GpGraphics ;


 int CombineModeReplace ;
 double GdipCombineRegionRect (int *,TYPE_1__*,int ) ;
 double GdipCreateFromHDC (int ,int **) ;
 double GdipCreateRegion (int **) ;
 double GdipDeleteGraphics (int *) ;
 double GdipDeleteRegion (int *) ;
 double GdipGetRegionBounds (int *,int *,TYPE_1__*) ;
 double GdipScaleWorldTransform (int *,double,double,int ) ;
 double GdipSetEmpty (int *) ;
 int GdipSetPageScale (int *,double) ;
 int GdipSetPageUnit (int *,int ) ;
 int GetDC (int ) ;
 double InvalidParameter ;
 int MatrixOrderPrepend ;
 double Ok ;
 int ReleaseDC (int ,int ) ;
 int UnitInch ;
 int ok (int,char*,double,...) ;

__attribute__((used)) static void test_getbounds(void)
{
    GpRegion *region;
    GpGraphics *graphics;
    GpStatus status;
    GpRectF rectf;
    HDC hdc = GetDC(0);

    status = GdipCreateFromHDC(hdc, &graphics);
    ok(status == Ok, "status %08x\n", status);
    status = GdipCreateRegion(&region);
    ok(status == Ok, "status %08x\n", status);


    status = GdipGetRegionBounds(((void*)0), ((void*)0), ((void*)0));
    ok(status == InvalidParameter, "status %08x\n", status);
    status = GdipGetRegionBounds(region, ((void*)0), ((void*)0));
    ok(status == InvalidParameter, "status %08x\n", status);
    status = GdipGetRegionBounds(region, graphics, ((void*)0));
    ok(status == InvalidParameter, "status %08x\n", status);

    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 100.0;
    status = GdipGetRegionBounds(region, graphics, &rectf);
    ok(status == Ok, "status %08x\n", status);
    ok(rectf.X == -(REAL)(1 << 22), "Expected X = %.2f, got %.2f\n", -(REAL)(1 << 22), rectf.X);
    ok(rectf.Y == -(REAL)(1 << 22), "Expected Y = %.2f, got %.2f\n", -(REAL)(1 << 22), rectf.Y);
    ok(rectf.Width == (REAL)(1 << 23), "Expected width = %.2f, got %.2f\n", (REAL)(1 << 23), rectf.Width);
    ok(rectf.Height == (REAL)(1 << 23), "Expected height = %.2f, got %.2f\n",(REAL)(1 << 23), rectf.Height);

    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 100.0;
    status = GdipSetEmpty(region);
    ok(status == Ok, "status %08x\n", status);
    status = GdipGetRegionBounds(region, graphics, &rectf);
    ok(status == Ok, "status %08x\n", status);
    ok(rectf.X == 0.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    ok(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    ok(rectf.Width == 0.0, "Expected width = 0.0, got %.2f\n", rectf.Width);
    ok(rectf.Height == 0.0, "Expected height = 0.0, got %.2f\n", rectf.Height);

    rectf.X = 10.0; rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 0.0;
    status = GdipGetRegionBounds(region, graphics, &rectf);
    ok(status == Ok, "status %08x\n", status);
    ok(rectf.X == 10.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    ok(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    ok(rectf.Width == 100.0, "Expected width = 0.0, got %.2f\n", rectf.Width);
    ok(rectf.Height == 100.0, "Expected height = 0.0, got %.2f\n", rectf.Height);


    status = GdipScaleWorldTransform(graphics, 2.0, 2.0, MatrixOrderPrepend);
    ok(status == Ok, "status %08x\n", status);
    GdipSetPageUnit(graphics, UnitInch);
    GdipSetPageScale(graphics, 2.0);
    status = GdipGetRegionBounds(region, graphics, &rectf);
    ok(status == Ok, "status %08x\n", status);
    ok(rectf.X == 10.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    ok(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    ok(rectf.Width == 100.0, "Expected width = 0.0, got %.2f\n", rectf.Width);

    rectf.X = 10.0; rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 0.0;
    status = GdipGetRegionBounds(region, graphics, &rectf);
    ok(status == Ok, "status %08x\n", status);
    ok(rectf.X == 10.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    ok(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    ok(rectf.Width == 100.0, "Expected width = 0.0, got %.2f\n", rectf.Width);
    ok(rectf.Height == 100.0, "Expected height = 0.0, got %.2f\n", rectf.Height);

    status = GdipDeleteRegion(region);
    ok(status == Ok, "status %08x\n", status);
    status = GdipDeleteGraphics(graphics);
    ok(status == Ok, "status %08x\n", status);
    ReleaseDC(0, hdc);
}
