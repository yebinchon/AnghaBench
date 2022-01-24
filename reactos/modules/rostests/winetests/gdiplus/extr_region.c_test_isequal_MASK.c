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
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    GpRegion *region1, *region2;
    GpGraphics *graphics;
    GpRectF rectf;
    GpStatus status;
    HDC hdc = FUNC8(0);
    BOOL res;

    status = FUNC1(hdc, &graphics);
    FUNC10(status == Ok, "status %08x\n", status);

    status = FUNC2(&region1);
    FUNC10(status == Ok, "status %08x\n", status);
    status = FUNC2(&region2);
    FUNC10(status == Ok, "status %08x\n", status);

    /* NULL */
    status = FUNC5(NULL, NULL, NULL, NULL);
    FUNC10(status == InvalidParameter, "status %08x\n", status);
    status = FUNC5(region1, region2, NULL, NULL);
    FUNC10(status == InvalidParameter, "status %08x\n", status);
    status = FUNC5(region1, region2, graphics, NULL);
    FUNC10(status == InvalidParameter, "status %08x\n", status);
    status = FUNC5(region1, region2, NULL, &res);
    FUNC10(status == InvalidParameter, "status %08x\n", status);

    /* infinite regions */
    res = FALSE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(res, "Expected to be equal.\n");
    /* empty regions */
    status = FUNC6(region1);
    FUNC10(status == Ok, "status %08x\n", status);
    status = FUNC6(region2);
    FUNC10(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(res, "Expected to be equal.\n");
    /* empty & infinite */
    status = FUNC7(region1);
    FUNC10(status == Ok, "status %08x\n", status);
    res = TRUE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(!res, "Expected to be unequal.\n");
    /* rect & (inf/empty) */
    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC0(region1, &rectf, CombineModeReplace);
    FUNC10(status == Ok, "status %08x\n", status);
    res = TRUE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(!res, "Expected to be unequal.\n");
    status = FUNC7(region2);
    FUNC10(status == Ok, "status %08x\n", status);
    res = TRUE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(!res, "Expected to be unequal.\n");
    /* roughly equal rectangles */
    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.001;
    status = FUNC0(region2, &rectf, CombineModeReplace);
    FUNC10(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(res, "Expected to be equal.\n");
    /* equal rectangles */
    rectf.X = rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC0(region2, &rectf, CombineModeReplace);
    FUNC10(status == Ok, "status %08x\n", status);
    res = FALSE;
    status = FUNC5(region1, region2, graphics, &res);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC10(res, "Expected to be equal.\n");

    /* cleanup */
    status = FUNC4(region1);
    FUNC10(status == Ok, "status %08x\n", status);
    status = FUNC4(region2);
    FUNC10(status == Ok, "status %08x\n", status);
    status = FUNC3(graphics);
    FUNC10(status == Ok, "status %08x\n", status);
    FUNC9(0, hdc);
}