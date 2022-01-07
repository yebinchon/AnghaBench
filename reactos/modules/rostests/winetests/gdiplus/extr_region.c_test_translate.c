
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double X; double Y; double Width; double Height; } ;
typedef int HDC ;
typedef scalar_t__ GpStatus ;
typedef int GpRegion ;
typedef TYPE_1__ GpRectF ;
typedef int GpPath ;
typedef int GpGraphics ;
typedef int BOOL ;


 int CombineModeReplace ;
 int FALSE ;
 int FillModeAlternate ;
 scalar_t__ GdipAddPathEllipse (int *,double,double,double,double) ;
 scalar_t__ GdipCombineRegionPath (int *,int *,int ) ;
 scalar_t__ GdipCombineRegionRect (int *,TYPE_1__*,int ) ;
 scalar_t__ GdipCreateFromHDC (int ,int **) ;
 scalar_t__ GdipCreatePath (int ,int **) ;
 scalar_t__ GdipCreateRegion (int **) ;
 scalar_t__ GdipDeleteGraphics (int *) ;
 scalar_t__ GdipDeletePath (int *) ;
 scalar_t__ GdipDeleteRegion (int *) ;
 scalar_t__ GdipIsEqualRegion (int *,int *,int *,int *) ;
 scalar_t__ GdipResetPath (int *) ;
 scalar_t__ GdipSetEmpty (int *) ;
 scalar_t__ GdipTranslateRegion (int *,double,double) ;
 int GetDC (int ) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int ReleaseDC (int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_translate(void)
{
    GpRegion *region, *region2;
    GpGraphics *graphics;
    GpPath *path;
    GpRectF rectf;
    GpStatus status;
    HDC hdc = GetDC(0);
    BOOL res;

    status = GdipCreateFromHDC(hdc, &graphics);
    ok(status == Ok, "status %08x\n", status);

    status = GdipCreatePath(FillModeAlternate, &path);
    ok(status == Ok, "status %08x\n", status);

    status = GdipCreateRegion(&region);
    ok(status == Ok, "status %08x\n", status);
    status = GdipCreateRegion(&region2);
    ok(status == Ok, "status %08x\n", status);


    status = GdipTranslateRegion(((void*)0), 0.0, 0.0);
    ok(status == InvalidParameter, "status %08x\n", status);


    status = GdipTranslateRegion(region, 10.0, 10.0);
    ok(status == Ok, "status %08x\n", status);

    status = GdipSetEmpty(region);
    ok(status == Ok, "status %08x\n", status);
    status = GdipTranslateRegion(region, 10.0, 10.0);
    ok(status == Ok, "status %08x\n", status);

    rectf.X = 10.0; rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    rectf.X = 15.0; rectf.Y = -2.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region2, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    status = GdipTranslateRegion(region, 5.0, -2.0);
    ok(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = GdipIsEqualRegion(region, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(res, "Expected to be equal.\n");

    status = GdipAddPathEllipse(path, 0.0, 10.0, 100.0, 150.0);
    ok(status == Ok, "status %08x\n", status);
    status = GdipCombineRegionPath(region, path, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    status = GdipResetPath(path);
    ok(status == Ok, "status %08x\n", status);
    status = GdipAddPathEllipse(path, 10.0, 21.0, 100.0, 150.0);
    ok(status == Ok, "status %08x\n", status);
    status = GdipCombineRegionPath(region2, path, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    status = GdipTranslateRegion(region, 10.0, 11.0);
    ok(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = GdipIsEqualRegion(region, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(res, "Expected to be equal.\n");

    status = GdipDeleteRegion(region);
    ok(status == Ok, "status %08x\n", status);
    status = GdipDeleteRegion(region2);
    ok(status == Ok, "status %08x\n", status);
    status = GdipDeleteGraphics(graphics);
    ok(status == Ok, "status %08x\n", status);
    status = GdipDeletePath(path);
    ok(status == Ok, "status %08x\n", status);
    ReleaseDC(0, hdc);
}
