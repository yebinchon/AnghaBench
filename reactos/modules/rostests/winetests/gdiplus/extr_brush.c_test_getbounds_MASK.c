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
struct TYPE_3__ {int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpPathGradient ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  getbounds_ptf ; 

__attribute__((used)) static void FUNC5(void)
{
    GpStatus status;
    GpPathGradient *brush;
    GpRectF bounds;

    status = FUNC0(getbounds_ptf, 4, WrapModeClamp, &brush);
    FUNC3(Ok, status);

    status = FUNC2(NULL, NULL);
    FUNC3(InvalidParameter, status);
    status = FUNC2(brush, NULL);
    FUNC3(InvalidParameter, status);
    status = FUNC2(NULL, &bounds);
    FUNC3(InvalidParameter, status);

    status = FUNC2(brush, &bounds);
    FUNC3(Ok, status);
    FUNC4(0.0, bounds.X);
    FUNC4(20.0, bounds.Y);
    FUNC4(50.0, bounds.Width);
    FUNC4(30.0, bounds.Height);

    FUNC1((GpBrush*) brush);
}