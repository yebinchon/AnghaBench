#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  todo_wine ;
typedef  int stat ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {double member_0; double member_1; } ;
struct TYPE_8__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef  int /*<<< orphan*/  REAL ;
typedef  int InvalidParameter ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int GpUnit ;
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
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int FUNC20 (int /*<<< orphan*/ *,double) ; 
 int FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  MetafileFrameUnitInch ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int UnitDisplay ; 
 int UnitInch ; 
 int UnitPixel ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pagetransform_records ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC27(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc;
    static const GpRectF frame = {0.0, 0.0, 5.0, 5.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{100.0,0.0},{0.0,100.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GpBitmap *bitmap;
    ARGB color;
    GpBrush *brush;
    GpUnit unit;
    REAL scale, dpix, dpiy;
    UINT width, height;

    hdc = FUNC0(0);

    stat = FUNC19(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitInch, description, &metafile);
    FUNC23(Ok, stat);

    FUNC1(hdc);

    if (stat != Ok)
        return;

    stat = FUNC14((GpImage*)metafile, &dpix);
    todo_wine FUNC23(InvalidParameter, stat);

    stat = FUNC15((GpImage*)metafile, &dpiy);
    todo_wine FUNC23(InvalidParameter, stat);

    stat = FUNC16((GpImage*)metafile, &width);
    todo_wine FUNC23(InvalidParameter, stat);

    stat = FUNC13((GpImage*)metafile, &height);
    todo_wine FUNC23(InvalidParameter, stat);

    stat = FUNC12((GpImage*)metafile, &graphics);
    FUNC23(Ok, stat);

    /* initial scale */
    stat = FUNC18(graphics, &unit);
    FUNC23(Ok, stat);
    FUNC23(UnitDisplay, unit);

    stat = FUNC17(graphics, &scale);
    FUNC23(Ok, stat);
    FUNC24(1.0, scale);

    stat = FUNC10(graphics, &dpix);
    FUNC23(Ok, stat);
    FUNC24(96.0, dpix);

    stat = FUNC11(graphics, &dpiy);
    FUNC23(Ok, stat);
    FUNC24(96.0, dpiy);

    stat = FUNC4((ARGB)0xff0000ff, (GpSolidFill**)&brush);
    FUNC23(Ok, stat);

    stat = FUNC9(graphics, brush, 1, 2, 1, 1);
    FUNC23(Ok, stat);

    stat = FUNC5(brush);
    FUNC23(Ok, stat);

    /* page unit = pixels */
    stat = FUNC21(graphics, UnitPixel);
    FUNC23(Ok, stat);

    stat = FUNC18(graphics, &unit);
    FUNC23(Ok, stat);
    FUNC23(UnitPixel, unit);

    stat = FUNC4((ARGB)0xff00ff00, (GpSolidFill**)&brush);
    FUNC23(Ok, stat);

    stat = FUNC9(graphics, brush, 0, 1, 1, 1);
    FUNC23(Ok, stat);

    stat = FUNC5(brush);
    FUNC23(Ok, stat);

    /* page scale = 3, unit = pixels */
    stat = FUNC20(graphics, 3.0);
    FUNC23(Ok, stat);

    stat = FUNC17(graphics, &scale);
    FUNC23(Ok, stat);
    FUNC24(3.0, scale);

    stat = FUNC4((ARGB)0xff00ffff, (GpSolidFill**)&brush);
    FUNC23(Ok, stat);

    stat = FUNC9(graphics, brush, 0, 1, 2, 2);
    FUNC23(Ok, stat);

    stat = FUNC5(brush);
    FUNC23(Ok, stat);

    /* page scale = 3, unit = inches */
    stat = FUNC21(graphics, UnitInch);
    FUNC23(Ok, stat);

    stat = FUNC18(graphics, &unit);
    FUNC23(Ok, stat);
    FUNC23(UnitInch, unit);

    stat = FUNC4((ARGB)0xffff0000, (GpSolidFill**)&brush);
    FUNC23(Ok, stat);

    stat = FUNC8(graphics, brush, 1.0/96.0, 0, 1, 1);
    FUNC23(Ok, stat);

    stat = FUNC5(brush);
    FUNC23(Ok, stat);

    /* page scale = 3, unit = display */
    stat = FUNC21(graphics, UnitDisplay);
    FUNC23(Ok, stat);

    stat = FUNC18(graphics, &unit);
    FUNC23(Ok, stat);
    FUNC23(UnitDisplay, unit);

    stat = FUNC4((ARGB)0xffff00ff, (GpSolidFill**)&brush);
    FUNC23(Ok, stat);

    stat = FUNC8(graphics, brush, 3, 3, 2, 2);
    FUNC23(Ok, stat);

    stat = FUNC5(brush);
    FUNC23(Ok, stat);

    stat = FUNC6(graphics);
    FUNC23(Ok, stat);

    FUNC22(metafile, pagetransform_records, "pagetransform metafile", dst_points, &frame, UnitPixel);

    FUNC26(&metafile, "pagetransform.emf");

    stat = FUNC3(100, 100, 0, PixelFormat32bppARGB, NULL, &bitmap);
    FUNC23(Ok, stat);

    stat = FUNC12((GpImage*)bitmap, &graphics);
    FUNC23(Ok, stat);

    FUNC25(metafile, graphics, pagetransform_records, "pagetransform playback", dst_points, &frame, UnitPixel);

    stat = FUNC2(bitmap, 50, 50, &color);
    FUNC23(Ok, stat);
    FUNC23(0, color);

    stat = FUNC2(bitmap, 30, 50, &color);
    FUNC23(Ok, stat);
    FUNC23(0xff0000ff, color);

    stat = FUNC2(bitmap, 10, 30, &color);
    FUNC23(Ok, stat);
    FUNC23(0xff00ff00, color);

    stat = FUNC2(bitmap, 20, 80, &color);
    FUNC23(Ok, stat);
    FUNC23(0xff00ffff, color);

    stat = FUNC2(bitmap, 80, 20, &color);
    FUNC23(Ok, stat);
    FUNC23(0xffff0000, color);

    stat = FUNC2(bitmap, 80, 80, &color);
    FUNC23(Ok, stat);
    FUNC23(0xffff00ff, color);

    stat = FUNC6(graphics);
    FUNC23(Ok, stat);

    stat = FUNC7((GpImage*)bitmap);
    FUNC23(Ok, stat);

    stat = FUNC7((GpImage*)metafile);
    FUNC23(Ok, stat);
}