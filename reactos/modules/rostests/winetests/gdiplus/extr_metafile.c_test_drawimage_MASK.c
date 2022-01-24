#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  buff ;
typedef  char WCHAR ;
struct TYPE_29__ {double member_0; double member_1; } ;
struct TYPE_28__ {double member_0; double member_1; double member_2; double member_3; } ;
struct TYPE_27__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_26__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_25__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_24__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_23__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_22__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_21__ {TYPE_6__ member_4; TYPE_5__ member_3; TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct TYPE_20__ {TYPE_7__ bmiHeader; } ;
struct TYPE_19__ {TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_8__ GpRectF ;
typedef  TYPE_9__ GpPointF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImageAttributes ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  TYPE_10__ ColorMatrix ;
typedef  TYPE_11__ BYTE ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_11__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  ColorAdjustTypeDefault ; 
 int /*<<< orphan*/  ColorMatrixFlagsDefault ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,TYPE_11__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_9__ const*,int,double,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  draw_image_bitmap_records ; 
 int /*<<< orphan*/  draw_image_metafile_records ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static void FUNC21(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpPointF dst_points[3] = {{10.0,10.0},{85.0,15.0},{10.0,80.0}};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    const ColorMatrix double_red = {{
        {2.0,0.0,0.0,0.0,0.0},
        {0.0,1.0,0.0,0.0,0.0},
        {0.0,0.0,1.0,0.0,0.0},
        {0.0,0.0,0.0,1.0,0.0},
        {0.0,0.0,0.0,0.0,1.0}}};

    GpImageAttributes *imageattr;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HENHMETAFILE hemf;
    GpStatus stat;
    BITMAPINFO info;
    BYTE buff[400];
    GpImage *image;
    HDC hdc;

    hdc = FUNC0(0);
    stat = FUNC12(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC17(Ok, stat);

    stat = FUNC11((GpImage*)metafile, &graphics);
    FUNC17(Ok, stat);

    FUNC18(&info, 0, sizeof(info));
    info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    info.bmiHeader.biWidth = 10;
    info.bmiHeader.biHeight = 10;
    info.bmiHeader.biPlanes = 1;
    info.bmiHeader.biBitCount = 32;
    info.bmiHeader.biCompression = BI_RGB;
    FUNC18(buff, 0x80, sizeof(buff));
    stat = FUNC3(&info, buff, (GpBitmap**)&image);
    FUNC17(Ok, stat);

    stat = FUNC4(&imageattr);
    FUNC17(Ok, stat);

    stat = FUNC13(imageattr, ColorAdjustTypeDefault,
            TRUE, &double_red, NULL, ColorMatrixFlagsDefault);
    FUNC17(Ok, stat);

    stat = FUNC9(graphics, image, dst_points, 3,
            0.0, 0.0, 10.0, 10.0, UnitPixel, imageattr, NULL, NULL);
    FUNC8(imageattr);
    FUNC17(Ok, stat);

    FUNC7(image);

    stat = FUNC6(graphics);
    FUNC17(Ok, stat);
    FUNC19(&metafile, "draw_image_bitmap.emf");

    stat = FUNC10(metafile, &hemf);
    FUNC17(Ok, stat);

    FUNC16(hemf, draw_image_bitmap_records, "draw image bitmap");

    /* test drawing metafile */
    stat = FUNC12(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC17(Ok, stat);

    stat = FUNC11((GpImage*)metafile, &graphics);
    FUNC17(Ok, stat);

    stat = FUNC5(hemf, TRUE, (GpMetafile**)&image);
    FUNC17(Ok, stat);

    stat = FUNC9(graphics, image, dst_points, 3,
            0.0, 0.0, 100.0, 100.0, UnitPixel, NULL, NULL, NULL);
    FUNC17(Ok, stat);

    FUNC7(image);

    stat = FUNC6(graphics);
    FUNC17(Ok, stat);
    FUNC19(&metafile, "draw_image_metafile.emf");

    stat = FUNC10(metafile, &hemf);
    FUNC17(Ok, stat);

    if (FUNC15(FUNC14("gdiplus.dll"), "GdipConvertToEmfPlus"))
    {
        FUNC16(hemf, draw_image_metafile_records, "draw image metafile");
    }
    else
    {
        FUNC20("draw image metafile records tests skipped\n");
    }
    FUNC2(hemf);

    FUNC1(hdc);
    stat = FUNC7((GpImage*)metafile);
    FUNC17(Ok, stat);
}