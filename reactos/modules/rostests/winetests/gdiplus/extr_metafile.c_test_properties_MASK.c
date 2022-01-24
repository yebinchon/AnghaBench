#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  CompositingModeSourceCopy ; 
 int /*<<< orphan*/  CompositingModeSourceOver ; 
 int /*<<< orphan*/  CompositingQualityHighQuality ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InterpolationModeDefault ; 
 int /*<<< orphan*/  InterpolationModeHighQuality ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelOffsetModeHighQuality ; 
 int /*<<< orphan*/  SmoothingModeAntiAlias ; 
 int /*<<< orphan*/  TextRenderingHintAntiAlias ; 
 int /*<<< orphan*/  TextRenderingHintSystemDefault ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  properties_records ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};

    GpMetafile *metafile;
    GpGraphics *graphics;
    HENHMETAFILE hemf;
    GpStatus stat;
    HDC hdc;

    hdc = FUNC0(0);
    stat = FUNC7(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC15(Ok, stat);
    FUNC1(hdc);

    stat = FUNC6((GpImage*)metafile, &graphics);
    FUNC15(Ok, stat);

    stat = FUNC13(graphics, TextRenderingHintSystemDefault);
    FUNC15(Ok, stat);
    stat = FUNC13(graphics, TextRenderingHintAntiAlias);
    FUNC15(Ok, stat);

    stat = FUNC11(graphics, PixelOffsetModeHighQuality);
    FUNC15(Ok, stat);
    stat = FUNC11(graphics, PixelOffsetModeHighQuality);
    FUNC15(Ok, stat);

    stat = FUNC12(graphics, SmoothingModeAntiAlias);
    FUNC15(Ok, stat);
    stat = FUNC12(graphics, SmoothingModeAntiAlias);
    FUNC15(Ok, stat);

    stat = FUNC8(graphics, CompositingModeSourceOver);
    FUNC15(Ok, stat);
    stat = FUNC8(graphics, CompositingModeSourceCopy);
    FUNC15(Ok, stat);

    stat = FUNC9(graphics, CompositingQualityHighQuality);
    FUNC15(Ok, stat);
    stat = FUNC9(graphics, CompositingQualityHighQuality);
    FUNC15(Ok, stat);

    stat = FUNC10(graphics, InterpolationModeDefault);
    FUNC15(Ok, stat);
    stat = FUNC10(graphics, InterpolationModeHighQuality);
    FUNC15(Ok, stat);

    stat = FUNC3(graphics);
    FUNC15(Ok, stat);
    FUNC16(&metafile, "properties.emf");

    stat = FUNC5(metafile, &hemf);
    FUNC15(Ok, stat);

    FUNC14(hemf, properties_records, "properties");
    FUNC2(hemf);

    stat = FUNC4((GpImage*)metafile);
    FUNC15(Ok, stat);
}