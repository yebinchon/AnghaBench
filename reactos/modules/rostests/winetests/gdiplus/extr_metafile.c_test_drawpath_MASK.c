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
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  draw_path_records ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};

    GpMetafile *metafile;
    GpGraphics *graphics;
    HENHMETAFILE hemf;
    GpStatus stat;
    GpPath *path;
    GpPen *pen;
    HDC hdc;

    hdc = FUNC0(0);
    stat = FUNC13(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC15(Ok, stat);
    FUNC1(hdc);

    stat = FUNC12((GpImage*)metafile, &graphics);
    FUNC15(Ok, stat);

    stat = FUNC4(FillModeAlternate, &path);
    FUNC15(Ok, stat);
    stat = FUNC3(path, 5, 5, 30, 30);
    FUNC15(Ok, stat);

    stat = FUNC5((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    FUNC15(Ok, stat);

    stat = FUNC10(graphics, pen, path);
    FUNC15(Ok, stat);

    stat = FUNC8(pen);
    FUNC15(Ok, stat);
    stat = FUNC7(path);
    FUNC15(Ok, stat);

    stat = FUNC6(graphics);
    FUNC15(Ok, stat);
    FUNC16(&metafile, "draw_path.emf");

    stat = FUNC11(metafile, &hemf);
    FUNC15(Ok, stat);

    FUNC14(hemf, draw_path_records, "draw path");
    FUNC2(hemf);

    stat = FUNC9((GpImage*)metafile);
    FUNC15(Ok, stat);
}