#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_6__ {double member_0; double member_1; } ;
struct TYPE_5__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int GpStatus ;
typedef  TYPE_1__ GpRectF ;
typedef  TYPE_2__ GpPointF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__ const*,int,double,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  clear_emf_records ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc;
    HENHMETAFILE hemf;
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const GpPointF dst_points[3] = {{10.0,10.0},{20.0,10.0},{10.0,20.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    GpBitmap *bitmap;
    ARGB color;

    hdc = FUNC0(0);

    stat = FUNC11(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC13(Ok, stat);

    FUNC1(hdc);

    if (stat != Ok)
        return;

    stat = FUNC8(metafile, &hemf);
    FUNC13(InvalidParameter, stat);

    stat = FUNC9((GpImage*)metafile, &graphics);
    FUNC13(Ok, stat);

    stat = FUNC10(graphics, 0xffffff00);
    FUNC13(Ok, stat);

    stat = FUNC5(graphics);
    FUNC13(Ok, stat);

    FUNC14(&metafile, "clear.emf");

    stat = FUNC4(30, 30, 0, PixelFormat32bppRGB, NULL, &bitmap);
    FUNC13(Ok, stat);

    stat = FUNC9((GpImage*)bitmap, &graphics);
    FUNC13(Ok, stat);

    stat = FUNC7(graphics, (GpImage*)metafile, dst_points, 3,
        0.0, 0.0, 100.0, 100.0, UnitPixel, NULL, NULL, NULL);
    FUNC13(Ok, stat);

    stat = FUNC3(bitmap, 5, 5, &color);
    FUNC13(Ok, stat);
    FUNC13(0xff000000, color);

    stat = FUNC3(bitmap, 15, 15, &color);
    FUNC13(Ok, stat);
    FUNC13(0xffffff00, color);

    stat = FUNC3(bitmap, 25, 25, &color);
    FUNC13(Ok, stat);
    FUNC13(0xff000000, color);

    stat = FUNC5(graphics);
    FUNC13(Ok, stat);

    stat = FUNC6((GpImage*)bitmap);
    FUNC13(Ok, stat);

    stat = FUNC8(metafile, &hemf);
    FUNC13(Ok, stat);

    stat = FUNC6((GpImage*)metafile);
    FUNC13(Ok, stat);

    FUNC12(hemf, clear_emf_records, "clear emf");

    FUNC2(hemf);
}