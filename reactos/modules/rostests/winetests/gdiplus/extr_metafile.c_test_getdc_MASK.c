#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_10__ {double member_0; double member_1; } ;
struct TYPE_9__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int GpStatus ;
typedef  TYPE_1__ GpRectF ;
typedef  TYPE_2__ GpPointF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  scalar_t__ BOOL ;
typedef  int ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__ const*,int,double,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  getdc_records ; 
 int /*<<< orphan*/  FUNC21 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC24(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc, metafile_dc;
    HENHMETAFILE hemf;
    BOOL ret;
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{100.0,0.0},{0.0,100.0}};
    static const GpPointF dst_points_half[3] = {{0.0,0.0},{50.0,0.0},{0.0,50.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    HBRUSH hbrush, holdbrush;
    GpBitmap *bitmap;
    ARGB color;

    hdc = FUNC0(0);

    stat = FUNC14(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC20(Ok, stat);

    FUNC2(hdc);

    if (stat != Ok)
        return;

    stat = FUNC12(metafile, &hemf);
    FUNC20(InvalidParameter, stat);

    stat = FUNC13((GpImage*)metafile, &graphics);
    FUNC20(Ok, stat);

    stat = FUNC11(graphics, &metafile_dc);
    FUNC20(Ok, stat);

    if (stat != Ok)
    {
        FUNC8(graphics);
        FUNC9((GpImage*)metafile);
        return;
    }

    hbrush = FUNC1(0xff0000);

    holdbrush = FUNC17(metafile_dc, hbrush);

    FUNC16(metafile_dc, 25, 25, 75, 75);

    FUNC17(metafile_dc, holdbrush);

    FUNC4(hbrush);

    stat = FUNC15(graphics, metafile_dc);
    FUNC20(Ok, stat);

    stat = FUNC8(graphics);
    FUNC20(Ok, stat);

    FUNC19(metafile, getdc_records, "getdc metafile", dst_points, &frame, UnitPixel);

    FUNC23(&metafile, "getdc.emf");

    stat = FUNC7(100, 100, 0, PixelFormat32bppARGB, NULL, &bitmap);
    FUNC20(Ok, stat);

    stat = FUNC13((GpImage*)bitmap, &graphics);
    FUNC20(Ok, stat);

    FUNC22(metafile, graphics, getdc_records, "getdc playback", dst_points, &frame, UnitPixel);

    stat = FUNC5(bitmap, 15, 15, &color);
    FUNC20(Ok, stat);
    FUNC20(0, color);

    stat = FUNC5(bitmap, 50, 50, &color);
    FUNC20(Ok, stat);
    FUNC20(0xff0000ff, color);

    stat = FUNC6(bitmap, 50, 50, 0);
    FUNC20(Ok, stat);

    FUNC22(metafile, graphics, getdc_records, "getdc playback", dst_points_half, &frame, UnitPixel);

    stat = FUNC5(bitmap, 15, 15, &color);
    FUNC20(Ok, stat);
    FUNC20(0xff0000ff, color);

    stat = FUNC5(bitmap, 50, 50, &color);
    FUNC20(Ok, stat);
    FUNC20(0, color);

    stat = FUNC6(bitmap, 15, 15, 0);
    FUNC20(Ok, stat);

    stat = FUNC10(graphics, (GpImage*)metafile, dst_points, 3,
        0.0, 0.0, 100.0, 100.0, UnitPixel, NULL, NULL, NULL);
    FUNC20(Ok, stat);

    stat = FUNC5(bitmap, 15, 15, &color);
    FUNC20(Ok, stat);
    FUNC20(0, color);

    stat = FUNC5(bitmap, 50, 50, &color);
    FUNC20(Ok, stat);
    FUNC20(0xff0000ff, color);

    stat = FUNC8(graphics);
    FUNC20(Ok, stat);

    stat = FUNC9((GpImage*)bitmap);
    FUNC20(Ok, stat);

    stat = FUNC12(metafile, &hemf);
    FUNC20(Ok, stat);

    stat = FUNC9((GpImage*)metafile);
    FUNC20(Ok, stat);

    FUNC18(hemf, getdc_records, "getdc emf");

    ret = FUNC3(hemf);
    FUNC21(ret != 0, "Failed to delete enhmetafile %p\n", hemf);
}