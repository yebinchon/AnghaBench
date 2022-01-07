
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int region_data ;
typedef int UINT ;
typedef int REAL ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef int GpGraphics ;
typedef int DWORD ;
typedef int COLORREF ;
typedef int BYTE ;


 int CombineModeReplace ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateRegion (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipGetClip (int *,int *) ;
 int GdipGetRegionData (int *,int *,int,int *) ;
 int GdipGraphicsClear (int *,int) ;
 int GdipResetClip (int *) ;
 int GdipResetWorldTransform (int *) ;
 int GdipScaleWorldTransform (int *,double,double,int ) ;
 int GdipSetClipRect (int *,int,int,int,int,int ) ;
 int GetDC (int ) ;
 int GetPixel (int ,int,int) ;
 int MatrixOrderAppend ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int,int ) ;
 int expectf (double,int ) ;
 int hwnd ;

__attribute__((used)) static void test_clip_xform(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC( hwnd );
    GpRegion *clip;
    COLORREF color;
    UINT region_data_size;
    struct {
        DWORD size;
        DWORD checksum;
        DWORD magic;
        DWORD num_children;
        DWORD element_type;
        REAL x;
        REAL y;
        REAL width;
        REAL height;
    } region_data;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    status = GdipCreateRegion(&clip);
    expect(Ok, status);

    status = GdipGraphicsClear(graphics, 0xff000000);
    expect(Ok, status);

    status = GdipSetClipRect(graphics, 10, 10, -10, -10, CombineModeReplace);
    expect(Ok, status);
    status = GdipGetClip(graphics, clip);
    expect(Ok, status);
    status = GdipGetRegionData(clip, (BYTE*)&region_data, sizeof(region_data), &region_data_size);
    expect(Ok, status);
    expect(36, region_data_size);
    expect(28, region_data.size);
    expect(0, region_data.num_children);
    expect(0x10000000 , region_data.element_type);
    expectf(0.0, region_data.x);
    expectf(0.0, region_data.y);
    expectf(10.0, region_data.width);
    expectf(10.0, region_data.height);


    status = GdipGraphicsClear(graphics, 0xffff0000);
    expect(Ok, status);
    color = GetPixel(hdc, 5, 5);
    expect(0, color);

    status = GdipScaleWorldTransform(graphics, 2.0, 2.0, MatrixOrderAppend);
    expect(Ok, status);

    status = GdipGraphicsClear(graphics, 0xffff0000);
    expect(Ok, status);
    color = GetPixel(hdc, 5, 5);
    expect(0, color);

    status = GdipResetClip(graphics);
    expect(Ok, status);
    status = GdipResetWorldTransform(graphics);
    expect(Ok, status);
    status = GdipGraphicsClear(graphics, 0xff000000);
    expect(Ok, status);

    status = GdipScaleWorldTransform(graphics, 2.0, 2.0, MatrixOrderAppend);
    expect(Ok, status);

    status = GdipSetClipRect(graphics, 5, 5, -5, -5, CombineModeReplace);
    expect(Ok, status);
    status = GdipGetClip(graphics, clip);
    expect(Ok, status);
    status = GdipGetRegionData(clip, (BYTE*)&region_data, sizeof(region_data), &region_data_size);
    expect(Ok, status);
    expect(36, region_data_size);
    expect(28, region_data.size);
    expect(0, region_data.num_children);
    expect(0x10000000 , region_data.element_type);
    expectf(0.0, region_data.x);
    expectf(0.0, region_data.y);
    expectf(5.0, region_data.width);
    expectf(5.0, region_data.height);

    status = GdipGraphicsClear(graphics, 0xffff0000);
    expect(Ok, status);
    color = GetPixel(hdc, 5, 5);
    expect(0xff, color);

    GdipDeleteGraphics(graphics);
    GdipDeleteRegion(clip);
    ReleaseDC(hwnd, hdc);
}
