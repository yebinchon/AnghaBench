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
struct TYPE_3__ {double X; double Y; double Width; double Height; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpMatrix ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  MatrixOrderAppend ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC22(void)
{
    GpRegion *region, *region2;
    GpMatrix *matrix;
    GpGraphics *graphics;
    GpPath *path;
    GpRectF rectf;
    GpStatus status;
    HDC hdc = FUNC17(0);
    BOOL res;
    DWORD type;

    status = FUNC3(hdc, &graphics);
    FUNC19(Ok, status);

    status = FUNC5(FillModeAlternate, &path);
    FUNC19(Ok, status);

    status = FUNC6(&region);
    FUNC19(Ok, status);
    status = FUNC6(&region2);
    FUNC19(Ok, status);

    status = FUNC4(&matrix);
    FUNC19(Ok, status);
    status = FUNC14(matrix, 2.0, 3.0, MatrixOrderAppend);
    FUNC19(Ok, status);

    /* NULL */
    status = FUNC16(NULL, matrix);
    FUNC19(InvalidParameter, status);

    status = FUNC16(region, NULL);
    FUNC19(InvalidParameter, status);

    /* infinite */
    status = FUNC16(region, matrix);
    FUNC19(Ok, status);

    res = FALSE;
    status = FUNC11(region, region2, graphics, &res);
    FUNC19(Ok, status);
    FUNC21(res, "Expected to be equal.\n");
    type = FUNC20(region);
    FUNC19(0x10000003 /* RegionDataInfiniteRect */, type);

    /* empty */
    status = FUNC15(region);
    FUNC19(Ok, status);
    status = FUNC16(region, matrix);
    FUNC19(Ok, status);

    status = FUNC15(region2);
    FUNC19(Ok, status);

    res = FALSE;
    status = FUNC11(region, region2, graphics, &res);
    FUNC19(Ok, status);
    FUNC21(res, "Expected to be equal.\n");
    type = FUNC20(region);
    FUNC19(0x10000002 /* RegionDataEmptyRect */, type);

    /* rect */
    rectf.X = 10.0;
    rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC2(region, &rectf, CombineModeReplace);
    FUNC19(Ok, status);
    rectf.X = 20.0;
    rectf.Y = 0.0;
    rectf.Width = 200.0;
    rectf.Height = 300.0;
    status = FUNC2(region2, &rectf, CombineModeReplace);
    FUNC19(Ok, status);
    status = FUNC16(region, matrix);
    FUNC19(Ok, status);
    res = FALSE;
    status = FUNC11(region, region2, graphics, &res);
    FUNC19(Ok, status);
    FUNC21(res, "Expected to be equal.\n");
    type = FUNC20(region);
    FUNC19(0x10000000 /* RegionDataRect */, type);

    /* path */
    status = FUNC0(path, 0.0, 10.0, 100.0, 150.0);
    FUNC19(Ok, status);
    status = FUNC1(region, path, CombineModeReplace);
    FUNC19(Ok, status);
    status = FUNC12(path);
    FUNC19(Ok, status);
    status = FUNC0(path, 0.0, 30.0, 200.0, 450.0);
    FUNC19(Ok, status);
    status = FUNC1(region2, path, CombineModeReplace);
    FUNC19(Ok, status);
    status = FUNC16(region, matrix);
    FUNC19(Ok, status);
    res = FALSE;
    status = FUNC11(region, region2, graphics, &res);
    FUNC19(Ok, status);
    FUNC21(res, "Expected to be equal.\n");
    type = FUNC20(region);
    FUNC19(0x10000001 /* RegionDataPath */, type);

    /* rotated rect -> path */
    rectf.X = 10.0;
    rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC2(region, &rectf, CombineModeReplace);
    FUNC19(Ok, status);
    status = FUNC13(matrix, 45.0, MatrixOrderAppend);
    FUNC19(Ok, status);
    status = FUNC16(region, matrix);
    FUNC19(Ok, status);
    type = FUNC20(region);
    FUNC19(0x10000001 /* RegionDataPath */, type);

    status = FUNC10(region);
    FUNC19(Ok, status);
    status = FUNC10(region2);
    FUNC19(Ok, status);
    status = FUNC7(graphics);
    FUNC19(Ok, status);
    status = FUNC9(path);
    FUNC19(Ok, status);
    status = FUNC8(matrix);
    FUNC19(Ok, status);
    FUNC18(0, hdc);
}