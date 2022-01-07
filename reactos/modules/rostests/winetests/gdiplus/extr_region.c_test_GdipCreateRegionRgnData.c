
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ UINT ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef int GpGraphics ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateRegion (int **) ;
 int GdipCreateRegionRgnData (int *,scalar_t__,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipGetRegionData (int *,int *,int,scalar_t__*) ;
 int GdipIsEmptyRegion (int *,int *,int*) ;
 int GdipIsInfiniteRegion (int *,int *,int*) ;
 int GdipSetEmpty (int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int,scalar_t__) ;
 int memset (int *,int,int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_GdipCreateRegionRgnData(void)
{
    GpGraphics *graphics = ((void*)0);
    GpRegion *region, *region2;
    HDC hdc = GetDC(0);
    GpStatus status;
    BYTE buf[512];
    UINT needed;
    BOOL ret;

    status = GdipCreateRegionRgnData(((void*)0), 0, ((void*)0));
    ok(status == InvalidParameter, "status %d\n", status);

    status = GdipCreateFromHDC(hdc, &graphics);
    ok(status == Ok, "status %d\n", status);

    status = GdipCreateRegion(&region);
    ok(status == Ok, "status %d\n", status);


    memset(buf, 0xee, sizeof(buf));
    needed = 0;
    status = GdipGetRegionData(region, (BYTE*)buf, sizeof(buf), &needed);
    ok(status == Ok, "status %d\n", status);
    expect(20, needed);

    status = GdipCreateRegionRgnData(buf, needed, ((void*)0));
    ok(status == InvalidParameter, "status %d\n", status);

    status = GdipCreateRegionRgnData(buf, needed, &region2);
    ok(status == Ok, "status %d\n", status);

    ret = FALSE;
    status = GdipIsInfiniteRegion(region2, graphics, &ret);
    ok(status == Ok, "status %d\n", status);
    ok(ret, "got %d\n", ret);
    GdipDeleteRegion(region2);


    status = GdipSetEmpty(region);
    ok(status == Ok, "status %d\n", status);

    memset(buf, 0xee, sizeof(buf));
    needed = 0;
    status = GdipGetRegionData(region, (BYTE*)buf, sizeof(buf), &needed);
    ok(status == Ok, "status %d\n", status);
    expect(20, needed);

    status = GdipCreateRegionRgnData(buf, needed, &region2);
    ok(status == Ok, "status %d\n", status);

    ret = FALSE;
    status = GdipIsEmptyRegion(region2, graphics, &ret);
    ok(status == Ok, "status %d\n", status);
    ok(ret, "got %d\n", ret);
    GdipDeleteRegion(region2);

    GdipDeleteGraphics(graphics);
    GdipDeleteRegion(region);
    ReleaseDC(0, hdc);
}
