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
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  EmfTypeEmfPlusOnly ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GenericError ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fill_path_records ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const WCHAR winetestemfW[] = {'w','i','n','e','t','e','s','t','.','e','m','f',0};

    GpMetafile *metafile;
    GpGraphics *graphics;
    GpSolidFill *brush;
    HENHMETAFILE hemf;
    GpStatus stat;
    GpPath *path;
    HDC hdc;

    hdc = FUNC1(0);
    stat = FUNC16(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC18(Ok, stat);
    FUNC2(hdc);

    stat = FUNC15((GpImage*)metafile, &graphics);
    FUNC18(Ok, stat);

    stat = FUNC7(FillModeAlternate, &path);
    FUNC18(Ok, stat);
    stat = FUNC5(path, 5, 5, 30, 30);
    FUNC18(Ok, stat);
    stat = FUNC5(path, 30, 30, 5, 30);
    FUNC18(Ok, stat);

    stat = FUNC8(0xffaabbcc, &brush);
    FUNC18(Ok, stat);

    stat = FUNC13(graphics, (GpBrush*)brush, path);
    FUNC18(Ok, stat);

    stat = FUNC9((GpBrush*)brush);
    FUNC18(Ok, stat);
    stat = FUNC11(path);
    FUNC18(Ok, stat);

    stat = FUNC10(graphics);
    FUNC18(Ok, stat);
    FUNC19(&metafile, "fill_path.emf");

    stat = FUNC14(metafile, &hemf);
    FUNC18(Ok, stat);

    FUNC17(hemf, fill_path_records, "fill path");

    /* write to disk */
    FUNC3(FUNC0(hemf, winetestemfW));

    FUNC3(hemf);

    stat = FUNC12((GpImage*)metafile);
    FUNC18(Ok, stat);

    /* should succeed when given path to an EMF */
    stat = FUNC6(winetestemfW, NULL, &metafile);
    FUNC18(Ok, stat);

    stat = FUNC12((GpImage*)metafile);
    FUNC18(Ok, stat);

    FUNC4(winetestemfW);

    stat = FUNC6(winetestemfW, NULL, &metafile);
    FUNC18(GenericError, stat);
}