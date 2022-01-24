#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_11__ {double member_0; double member_1; } ;
struct TYPE_10__ {double member_0; double member_1; double member_2; double member_3; int X; int Y; int Width; int Height; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GraphicsState ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_1__ GpRectF ;
typedef  TYPE_2__ GpPointF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeIntersect ; 
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  CombineModeXor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC5 (int,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clipping_records ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC23(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    GpBitmap *bitmap;
    GpRegion *region;
    GpBrush *brush;
    GpRectF rect;
    ARGB color;
    HDC hdc;
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{100.0,0.0},{0.0,100.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GraphicsState state;

    hdc = FUNC0(0);

    stat = FUNC13(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC19(Ok, stat);

    FUNC1(hdc);

    if (stat != Ok)
        return;

    stat = FUNC11((GpImage*)metafile, &graphics);
    FUNC19(Ok, stat);

    stat = FUNC15(graphics, &state);
    FUNC19(Ok, stat);

    stat = FUNC12(graphics, &rect);
    FUNC19(Ok, stat);
    FUNC20(rect.X == -0x400000, "rect.X = %f\n", rect.X);
    FUNC20(rect.Y == -0x400000, "rect.Y = %f\n", rect.Y);
    FUNC20(rect.Width == 0x800000, "rect.Width = %f\n", rect.Width);
    FUNC20(rect.Height == 0x800000, "rect.Height = %f\n", rect.Height);

    stat = FUNC16(graphics, 30, 30, 10, 10, CombineModeReplace);
    FUNC19(Ok, stat);

    stat = FUNC12(graphics, &rect);
    FUNC19(Ok, stat);
    FUNC20(rect.X == 30, "rect.X = %f\n", rect.X);
    FUNC20(rect.Y == 30, "rect.Y = %f\n", rect.Y);
    FUNC20(rect.Width == 10, "rect.Width = %f\n", rect.Width);
    FUNC20(rect.Height == 10, "rect.Height = %f\n", rect.Height);

    stat = FUNC5((ARGB)0xff000000, (GpSolidFill**)&brush);
    FUNC19(Ok, stat);

    stat = FUNC10(graphics, brush, 0, 0, 100, 100);
    FUNC19(Ok, stat);

    stat = FUNC6(brush);
    FUNC19(Ok, stat);

    stat = FUNC14(graphics, state);
    FUNC19(Ok, stat);

    stat = FUNC16(graphics, 30, 30, 10, 10, CombineModeXor);
    FUNC19(Ok, stat);

    stat = FUNC5((ARGB)0xff0000ff, (GpSolidFill**)&brush);
    FUNC19(Ok, stat);

    stat = FUNC10(graphics, brush, 30, 30, 20, 10);
    FUNC19(Ok, stat);

    stat = FUNC6(brush);
    FUNC19(Ok, stat);

    stat = FUNC4(&rect, &region);
    FUNC19(Ok, stat);

    stat = FUNC17(graphics, region, CombineModeIntersect);
    FUNC19(Ok, stat);

    stat = FUNC8(region);
    FUNC19(Ok, stat);

    stat = FUNC7(graphics);
    FUNC19(Ok, stat);

    FUNC18(metafile, clipping_records, "clipping metafile", dst_points, &frame, UnitPixel);

    FUNC22(&metafile, "clipping.emf");

    stat = FUNC3(100, 100, 0, PixelFormat32bppARGB, NULL, &bitmap);
    FUNC19(Ok, stat);

    stat = FUNC11((GpImage*)bitmap, &graphics);
    FUNC19(Ok, stat);

    FUNC21(metafile, graphics, clipping_records, "clipping playback", dst_points, &frame, UnitPixel);

    stat = FUNC2(bitmap, 80, 80, &color);
    FUNC19(Ok, stat);
    FUNC19(0, color);

    stat = FUNC2(bitmap, 35, 35, &color);
    FUNC19(Ok, stat);
    FUNC19(0xff000000, color);

    stat = FUNC2(bitmap, 45, 35, &color);
    FUNC19(Ok, stat);
    FUNC19(0xff0000ff, color);

    stat = FUNC7(graphics);
    FUNC19(Ok, stat);

    stat = FUNC9((GpImage*)bitmap);
    FUNC19(Ok, stat);

    stat = FUNC9((GpImage*)metafile);
    FUNC19(Ok, stat);
}