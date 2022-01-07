
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int Height; int Width; int Y; int X; } ;
struct TYPE_5__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef TYPE_1__ RectF ;
typedef int INT ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef TYPE_2__ GpRectF ;
typedef int GpMatrix ;


 int CombineModeExclude ;
 int GdipCombineRegionRect (int *,TYPE_1__ const*,int ) ;
 int GdipCreateMatrix (int **) ;
 int GdipCreateRegion (int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipGetRegionScans (int *,TYPE_2__*,int *,int *) ;
 int GdipGetRegionScansCount (int *,int*,int *) ;
 int Ok ;
 int expect (int,int) ;
 int expectf (double,int ) ;

__attribute__((used)) static void test_excludeinfinite(void)
{
    GpStatus status;
    GpRegion *region;
    UINT count=0xdeadbeef;
    GpRectF scans[4];
    GpMatrix *identity;
    static const RectF rect_exclude = {0.0, 0.0, 1.0, 1.0};

    status = GdipCreateMatrix(&identity);
    expect(Ok, status);

    status = GdipCreateRegion(&region);
    expect(Ok, status);

    status = GdipCombineRegionRect(region, &rect_exclude, CombineModeExclude);
    expect(Ok, status);

    status = GdipGetRegionScansCount(region, &count, identity);
    expect(Ok, status);
    expect(4, count);

    count = 4;
    status = GdipGetRegionScans(region, scans, (INT*)&count, identity);
    expect(Ok, status);

    expectf(-4194304.0, scans[0].X);
    expectf(-4194304.0, scans[0].Y);
    expectf(8388608.0, scans[0].Width);
    expectf(4194304.0, scans[0].Height);

    expectf(-4194304.0, scans[1].X);
    expectf(0.0, scans[1].Y);
    expectf(4194304.0, scans[1].Width);
    expectf(1.0, scans[1].Height);

    expectf(1.0, scans[2].X);
    expectf(0.0, scans[2].Y);
    expectf(4194303.0, scans[2].Width);
    expectf(1.0, scans[2].Height);

    expectf(-4194304.0, scans[3].X);
    expectf(1.0, scans[3].Y);
    expectf(8388608.0, scans[3].Width);
    expectf(4194303.0, scans[3].Height);

    GdipDeleteRegion(region);
    GdipDeleteMatrix(identity);
}
