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
struct TYPE_6__ {int X; int Y; } ;
struct TYPE_5__ {double X; double Y; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  TYPE_2__ GpPoint ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int CoordinateSpaceDevice ; 
 int CoordinateSpacePage ; 
 int CoordinateSpaceWorld ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,double) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,TYPE_2__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  MatrixOrderAppend ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (double,double) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC11(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC7( hwnd );
    GpPointF ptf[2];
    GpPoint pt[2];

    status = FUNC0(hdc, &graphics);
    FUNC9(Ok, status);

    /* NULL arguments */
    status = FUNC4(NULL, CoordinateSpacePage, CoordinateSpaceWorld, NULL, 0);
    FUNC9(InvalidParameter, status);
    status = FUNC4(graphics, CoordinateSpacePage, CoordinateSpaceWorld, NULL, 0);
    FUNC9(InvalidParameter, status);
    status = FUNC4(graphics, CoordinateSpacePage, CoordinateSpaceWorld, ptf, 0);
    FUNC9(InvalidParameter, status);
    status = FUNC4(graphics, CoordinateSpacePage, CoordinateSpaceWorld, ptf, -1);
    FUNC9(InvalidParameter, status);

    status = FUNC4(graphics, CoordinateSpaceDevice+1, CoordinateSpaceWorld, ptf, 2);
    FUNC9(InvalidParameter, status);
    status = FUNC4(graphics, -1, CoordinateSpaceWorld, ptf, 2);
    FUNC9(InvalidParameter, status);
    status = FUNC4(graphics, CoordinateSpaceDevice, CoordinateSpaceDevice+1, ptf, 2);
    FUNC9(InvalidParameter, status);
    status = FUNC4(graphics, CoordinateSpaceDevice, -1, ptf, 2);
    FUNC9(InvalidParameter, status);

    ptf[0].X = 1.0;
    ptf[0].Y = 0.0;
    ptf[1].X = 0.0;
    ptf[1].Y = 1.0;
    status = FUNC4(graphics, CoordinateSpaceDevice, CoordinateSpaceWorld, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(1.0, ptf[0].X);
    FUNC10(0.0, ptf[0].Y);
    FUNC10(0.0, ptf[1].X);
    FUNC10(1.0, ptf[1].Y);

    status = FUNC6(graphics, 5.0, 5.0, MatrixOrderAppend);
    FUNC9(Ok, status);
    status = FUNC3(graphics, UnitPixel);
    FUNC9(Ok, status);
    status = FUNC2(graphics, 3.0);
    FUNC9(Ok, status);

    ptf[0].X = 1.0;
    ptf[0].Y = 0.0;
    ptf[1].X = 0.0;
    ptf[1].Y = 1.0;
    status = FUNC4(graphics, CoordinateSpaceDevice, CoordinateSpaceWorld, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(18.0, ptf[0].X);
    FUNC10(15.0, ptf[0].Y);
    FUNC10(15.0, ptf[1].X);
    FUNC10(18.0, ptf[1].Y);

    ptf[0].X = 1.0;
    ptf[0].Y = 0.0;
    ptf[1].X = 0.0;
    ptf[1].Y = 1.0;
    status = FUNC4(graphics, CoordinateSpacePage, CoordinateSpaceWorld, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(6.0, ptf[0].X);
    FUNC10(5.0, ptf[0].Y);
    FUNC10(5.0, ptf[1].X);
    FUNC10(6.0, ptf[1].Y);

    ptf[0].X = 1.0;
    ptf[0].Y = 0.0;
    ptf[1].X = 0.0;
    ptf[1].Y = 1.0;
    status = FUNC4(graphics, CoordinateSpaceDevice, CoordinateSpacePage, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(3.0, ptf[0].X);
    FUNC10(0.0, ptf[0].Y);
    FUNC10(0.0, ptf[1].X);
    FUNC10(3.0, ptf[1].Y);

    ptf[0].X = 18.0;
    ptf[0].Y = 15.0;
    ptf[1].X = 15.0;
    ptf[1].Y = 18.0;
    status = FUNC4(graphics, CoordinateSpaceWorld, CoordinateSpaceDevice, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(1.0, ptf[0].X);
    FUNC10(0.0, ptf[0].Y);
    FUNC10(0.0, ptf[1].X);
    FUNC10(1.0, ptf[1].Y);

    ptf[0].X = 6.0;
    ptf[0].Y = 5.0;
    ptf[1].X = 5.0;
    ptf[1].Y = 6.0;
    status = FUNC4(graphics, CoordinateSpaceWorld, CoordinateSpacePage, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(1.0, ptf[0].X);
    FUNC10(0.0, ptf[0].Y);
    FUNC10(0.0, ptf[1].X);
    FUNC10(1.0, ptf[1].Y);

    ptf[0].X = 3.0;
    ptf[0].Y = 0.0;
    ptf[1].X = 0.0;
    ptf[1].Y = 3.0;
    status = FUNC4(graphics, CoordinateSpacePage, CoordinateSpaceDevice, ptf, 2);
    FUNC9(Ok, status);
    FUNC10(1.0, ptf[0].X);
    FUNC10(0.0, ptf[0].Y);
    FUNC10(0.0, ptf[1].X);
    FUNC10(1.0, ptf[1].Y);

    pt[0].X = 1;
    pt[0].Y = 0;
    pt[1].X = 0;
    pt[1].Y = 1;
    status = FUNC5(graphics, CoordinateSpaceDevice, CoordinateSpaceWorld, pt, 2);
    FUNC9(Ok, status);
    FUNC9(18, pt[0].X);
    FUNC9(15, pt[0].Y);
    FUNC9(15, pt[1].X);
    FUNC9(18, pt[1].Y);

    FUNC1(graphics);
    FUNC8(hwnd, hdc);
}