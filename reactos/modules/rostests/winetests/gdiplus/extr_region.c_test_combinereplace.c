
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
typedef int UINT ;
struct TYPE_4__ {double X; double Y; double Width; double Height; } ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef TYPE_1__ GpRectF ;
typedef int GpPath ;
typedef int DWORD ;
typedef int BYTE ;


 int CombineModeReplace ;
 int CombineModeUnion ;
 int FillModeAlternate ;
 int GdipAddPathEllipse (int *,double,double,double,double) ;
 int GdipCombineRegionPath (int *,int *,int) ;
 int GdipCombineRegionRect (int *,TYPE_1__*,int) ;
 int GdipCombineRegionRegion (int *,int *,int) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreateRegion (int **) ;
 int GdipCreateRegionRect (TYPE_1__*,int **) ;
 int GdipDeletePath (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipGetRegionData (int *,int *,int,int *) ;
 int GdipGetRegionDataSize (int *,int *) ;
 int Ok ;
 int RGNDATA_INFINITE_RECT ;
 int RGNDATA_PATH ;
 int RGNDATA_RECT ;
 int expect (int,int ) ;
 int expect_dword (int *,int) ;
 int expect_magic (int *) ;
 int trace (char*,int ) ;

__attribute__((used)) static void test_combinereplace(void)
{
    GpStatus status;
    GpRegion *region, *region2;
    GpPath *path;
    GpRectF rectf;
    UINT needed;
    DWORD buf[50];

    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;

    status = GdipCreateRegionRect(&rectf, &region);
    expect(Ok, status);


    status = GdipCombineRegionRect(region, &rectf,CombineModeReplace);
    expect(Ok, status);

    status = GdipGetRegionDataSize(region, &needed);
    expect(Ok, status);
    expect(36, needed);
    status = GdipGetRegionData(region, (BYTE*)buf, sizeof(buf), &needed);
    expect(Ok, status);
    expect(36, needed);
    expect_dword(buf, 28);
    trace("buf[1] = %08x\n", buf[1]);
    expect_magic(buf + 2);
    expect_dword(buf + 3, 0);
    expect_dword(buf + 4, RGNDATA_RECT);


    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);
    status = GdipAddPathEllipse(path, 0.0, 0.0, 100.0, 250.0);
    expect(Ok, status);
    status = GdipCombineRegionPath(region, path, CombineModeReplace);
    expect(Ok, status);

    status = GdipGetRegionDataSize(region, &needed);
    expect(Ok, status);
    expect(156, needed);
    status = GdipGetRegionData(region, (BYTE*)buf, sizeof(buf), &needed);
    expect(Ok, status);
    expect(156, needed);
    expect_dword(buf, 148);
    trace("buf[1] = %08x\n", buf[1]);
    expect_magic(buf + 2);
    expect_dword(buf + 3, 0);
    expect_dword(buf + 4, RGNDATA_PATH);
    GdipDeletePath(path);


    status = GdipCreateRegion(&region2);
    expect(Ok, status);
    status = GdipCombineRegionRegion(region, region2, CombineModeReplace);
    expect(Ok, status);

    status = GdipGetRegionDataSize(region, &needed);
    expect(Ok, status);
    expect(20, needed);
    status = GdipGetRegionData(region, (BYTE*)buf, sizeof(buf), &needed);
    expect(Ok, status);
    expect(20, needed);
    expect_dword(buf, 12);
    trace("buf[1] = %08x\n", buf[1]);
    expect_magic(buf + 2);
    expect_dword(buf + 3, 0);
    expect_dword(buf + 4, RGNDATA_INFINITE_RECT);
    GdipDeleteRegion(region2);


    status = GdipCreateRegionRect(&rectf, &region2);
    expect(Ok, status);
    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);
    status = GdipAddPathEllipse(path, 0.0, 0.0, 100.0, 250.0);
    expect(Ok, status);
    status = GdipCombineRegionPath(region2, path, CombineModeUnion);
    expect(Ok, status);
    GdipDeletePath(path);
    status = GdipCombineRegionRegion(region, region2, CombineModeReplace);
    expect(Ok, status);
    GdipDeleteRegion(region2);

    status = GdipGetRegionDataSize(region, &needed);
    expect(Ok, status);
    expect(180, needed);
    status = GdipGetRegionData(region, (BYTE*)buf, sizeof(buf), &needed);
    expect(Ok, status);
    expect(180, needed);
    expect_dword(buf, 172);
    trace("buf[1] = %08x\n", buf[1]);
    expect_magic(buf + 2);
    expect_dword(buf + 3, 2);
    expect_dword(buf + 4, CombineModeUnion);

    GdipDeleteRegion(region);
}
