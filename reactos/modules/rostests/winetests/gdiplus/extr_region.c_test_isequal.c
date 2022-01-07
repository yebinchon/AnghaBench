
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
typedef int GpGraphics ;
typedef int BOOL ;


 int CombineModeReplace ;
 int FALSE ;
 scalar_t__ GdipCombineRegionRect (int *,TYPE_1__*,int ) ;
 scalar_t__ GdipCreateFromHDC (int ,int **) ;
 scalar_t__ GdipCreateRegion (int **) ;
 scalar_t__ GdipDeleteGraphics (int *) ;
 scalar_t__ GdipDeleteRegion (int *) ;
 scalar_t__ GdipIsEqualRegion (int *,int *,int *,int *) ;
 scalar_t__ GdipSetEmpty (int *) ;
 scalar_t__ GdipSetInfinite (int *) ;
 int GetDC (int ) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_isequal(void)
{
    GpRegion *region1, *region2;
    GpGraphics *graphics;
    GpRectF rectf;
    GpStatus status;
    HDC hdc = GetDC(0);
    BOOL res;

    status = GdipCreateFromHDC(hdc, &graphics);
    ok(status == Ok, "status %08x\n", status);

    status = GdipCreateRegion(&region1);
    ok(status == Ok, "status %08x\n", status);
    status = GdipCreateRegion(&region2);
    ok(status == Ok, "status %08x\n", status);


    status = GdipIsEqualRegion(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(status == InvalidParameter, "status %08x\n", status);
    status = GdipIsEqualRegion(region1, region2, ((void*)0), ((void*)0));
    ok(status == InvalidParameter, "status %08x\n", status);
    status = GdipIsEqualRegion(region1, region2, graphics, ((void*)0));
    ok(status == InvalidParameter, "status %08x\n", status);
    status = GdipIsEqualRegion(region1, region2, ((void*)0), &res);
    ok(status == InvalidParameter, "status %08x\n", status);


    res = FALSE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(res, "Expected to be equal.\n");

    status = GdipSetEmpty(region1);
    ok(status == Ok, "status %08x\n", status);
    status = GdipSetEmpty(region2);
    ok(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(res, "Expected to be equal.\n");

    status = GdipSetInfinite(region1);
    ok(status == Ok, "status %08x\n", status);
    res = TRUE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(!res, "Expected to be unequal.\n");

    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region1, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    res = TRUE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(!res, "Expected to be unequal.\n");
    status = GdipSetInfinite(region2);
    ok(status == Ok, "status %08x\n", status);
    res = TRUE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(!res, "Expected to be unequal.\n");

    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.001;
    status = GdipCombineRegionRect(region2, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(res, "Expected to be equal.\n");

    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region2, &rectf, CombineModeReplace);
    ok(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = GdipIsEqualRegion(region1, region2, graphics, &res);
    ok(status == Ok, "status %08x\n", status);
    ok(res, "Expected to be equal.\n");


    status = GdipDeleteRegion(region1);
    ok(status == Ok, "status %08x\n", status);
    status = GdipDeleteRegion(region2);
    ok(status == Ok, "status %08x\n", status);
    status = GdipDeleteGraphics(graphics);
    ok(status == Ok, "status %08x\n", status);
    ReleaseDC(0, hdc);
}
