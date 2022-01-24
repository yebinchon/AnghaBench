#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double X; double Y; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpLineGradient ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  WrapModeTile ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStatus status;
    GpPen *pen = NULL;
    GpBrush *brush = NULL;
    GpPointF points[2];

    status = FUNC1(NULL, 10.0f, UnitPixel, &pen);
    FUNC4(InvalidParameter, status);
    FUNC5(pen == NULL, "Expected pen to be NULL\n");

    points[0].X = 7.0;
    points[0].Y = 11.0;
    points[1].X = 13.0;
    points[1].Y = 17.0;

    status = FUNC0(&points[0], &points[1], (ARGB)0xffff00ff,
                    (ARGB)0xff0000ff, WrapModeTile, (GpLineGradient **)&brush);
    FUNC4(Ok, status);
    FUNC5(brush != NULL, "Expected brush to be initialized\n");

    status = FUNC1(brush, 10.0f, UnitPixel, &pen);
    FUNC4(Ok, status);
    FUNC5(pen != NULL, "Expected pen to be initialized\n");

    status = FUNC3(pen);
    FUNC4(Ok, status);

    status = FUNC2(brush);
    FUNC4(Ok, status);
}