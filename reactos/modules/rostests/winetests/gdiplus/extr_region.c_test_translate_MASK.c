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
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 

__attribute__((used)) static void FUNC16(void)
{
    GpRegion *region, *region2;
    GpGraphics *graphics;
    GpPath *path;
    GpRectF rectf;
    GpStatus status;
    HDC hdc = FUNC13(0);
    BOOL res;

    status = FUNC3(hdc, &graphics);
    FUNC15(status == Ok, "status %08x\n", status);

    status = FUNC4(FillModeAlternate, &path);
    FUNC15(status == Ok, "status %08x\n", status);

    status = FUNC5(&region);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC5(&region2);
    FUNC15(status == Ok, "status %08x\n", status);

    /* NULL */
    status = FUNC12(NULL, 0.0, 0.0);
    FUNC15(status == InvalidParameter, "status %08x\n", status);

    /* infinite */
    status = FUNC12(region, 10.0, 10.0);
    FUNC15(status == Ok, "status %08x\n", status);
    /* empty */
    status = FUNC11(region);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC12(region, 10.0, 10.0);
    FUNC15(status == Ok, "status %08x\n", status);
    /* rect */
    rectf.X = 10.0; rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC2(region, &rectf, CombineModeReplace);
    FUNC15(status == Ok, "status %08x\n", status);
    rectf.X = 15.0; rectf.Y = -2.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC2(region2, &rectf, CombineModeReplace);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC12(region, 5.0, -2.0);
    FUNC15(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = FUNC9(region, region2, graphics, &res);
    FUNC15(status == Ok, "status %08x\n", status);
    FUNC15(res, "Expected to be equal.\n");
    /* path */
    status = FUNC0(path, 0.0, 10.0, 100.0, 150.0);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC1(region, path, CombineModeReplace);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC10(path);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC0(path, 10.0, 21.0, 100.0, 150.0);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC1(region2, path, CombineModeReplace);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC12(region, 10.0, 11.0);
    FUNC15(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = FUNC9(region, region2, graphics, &res);
    FUNC15(status == Ok, "status %08x\n", status);
    FUNC15(res, "Expected to be equal.\n");

    status = FUNC8(region);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC8(region2);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC6(graphics);
    FUNC15(status == Ok, "status %08x\n", status);
    status = FUNC7(path);
    FUNC15(status == Ok, "status %08x\n", status);
    FUNC14(0, hdc);
}