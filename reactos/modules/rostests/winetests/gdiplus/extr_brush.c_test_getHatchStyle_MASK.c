#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpHatchStyle ;
typedef  int /*<<< orphan*/  GpHatch ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HatchStyleHorizontal ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus status;
    GpHatch *brush;
    GpHatchStyle hatchStyle;

    FUNC0(HatchStyleHorizontal, 11, 12, &brush);

    status = FUNC2(NULL, &hatchStyle);
    FUNC3(InvalidParameter, status);

    status = FUNC2(brush, NULL);
    FUNC3(InvalidParameter, status);

    status = FUNC2(brush, &hatchStyle);
    FUNC3(Ok, status);
    FUNC3(HatchStyleHorizontal, hatchStyle);

    FUNC1((GpBrush *)brush);
}