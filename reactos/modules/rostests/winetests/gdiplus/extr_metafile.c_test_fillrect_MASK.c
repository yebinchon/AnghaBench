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
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  TYPE_1__ GpRectF ;
typedef  TYPE_2__ GpPointF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC5 (int,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__ const*,int,double,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  fillrect_records ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc;
    HENHMETAFILE hemf;
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{100.0,0.0},{0.0,100.0}};
    static const GpPointF dst_points_half[3] = {{0.0,0.0},{50.0,0.0},{0.0,50.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GpBitmap *bitmap;
    ARGB color;
    GpBrush *brush;

    hdc = FUNC0(0);

    stat = FUNC13(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC15(Ok, stat);

    FUNC1(hdc);

    if (stat != Ok)
        return;

    stat = FUNC11(metafile, &hemf);
    FUNC15(InvalidParameter, stat);

    stat = FUNC12((GpImage*)metafile, &graphics);
    FUNC15(Ok, stat);

    stat = FUNC5((ARGB)0xff0000ff, (GpSolidFill**)&brush);
    FUNC15(Ok, stat);

    stat = FUNC10(graphics, brush, 25, 25, 75, 75);
    FUNC15(Ok, stat);

    stat = FUNC6(brush);
    FUNC15(Ok, stat);

    stat = FUNC7(graphics);
    FUNC15(Ok, stat);

    FUNC14(metafile, fillrect_records, "fillrect metafile", dst_points, &frame, UnitPixel);

    FUNC17(&metafile, "fillrect.emf");

    stat = FUNC4(100, 100, 0, PixelFormat32bppARGB, NULL, &bitmap);
    FUNC15(Ok, stat);

    stat = FUNC12((GpImage*)bitmap, &graphics);
    FUNC15(Ok, stat);

    FUNC16(metafile, graphics, fillrect_records, "fillrect playback", dst_points, &frame, UnitPixel);

    stat = FUNC2(bitmap, 15, 15, &color);
    FUNC15(Ok, stat);
    FUNC15(0, color);

    stat = FUNC2(bitmap, 50, 50, &color);
    FUNC15(Ok, stat);
    FUNC15(0xff0000ff, color);

    stat = FUNC3(bitmap, 50, 50, 0);
    FUNC15(Ok, stat);

    FUNC16(metafile, graphics, fillrect_records, "fillrect playback", dst_points_half, &frame, UnitPixel);

    stat = FUNC2(bitmap, 15, 15, &color);
    FUNC15(Ok, stat);
    FUNC15(0xff0000ff, color);

    stat = FUNC2(bitmap, 50, 50, &color);
    FUNC15(Ok, stat);
    FUNC15(0, color);

    stat = FUNC3(bitmap, 15, 15, 0);
    FUNC15(Ok, stat);

    stat = FUNC9(graphics, (GpImage*)metafile, dst_points, 3,
        0.0, 0.0, 100.0, 100.0, UnitPixel, NULL, NULL, NULL);
    FUNC15(Ok, stat);

    stat = FUNC2(bitmap, 15, 15, &color);
    FUNC15(Ok, stat);
    FUNC15(0, color);

    stat = FUNC2(bitmap, 50, 50, &color);
    FUNC15(Ok, stat);
    FUNC15(0xff0000ff, color);

    stat = FUNC7(graphics);
    FUNC15(Ok, stat);

    stat = FUNC8((GpImage*)bitmap);
    FUNC15(Ok, stat);

    stat = FUNC8((GpImage*)metafile);
    FUNC15(Ok, stat);
}