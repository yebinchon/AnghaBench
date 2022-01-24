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
typedef  int HatchStyle ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpHatch ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int HatchStyle05Percent ; 
 int HatchStyleMax ; 
 int HatchStyleMin ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus status;
    GpHatch *brush;

    status = FUNC0(HatchStyleMin, 1, 2, &brush);
    FUNC2(Ok, status);
    FUNC3(brush != NULL, "Expected the brush to be initialized.\n");

    FUNC1((GpBrush *)brush);

    status = FUNC0(HatchStyleMax, 1, 2, &brush);
    FUNC2(Ok, status);
    FUNC3(brush != NULL, "Expected the brush to be initialized.\n");

    FUNC1((GpBrush *)brush);

    status = FUNC0(HatchStyle05Percent, 1, 2, NULL);
    FUNC2(InvalidParameter, status);

    status = FUNC0((HatchStyle)(HatchStyleMin - 1), 1, 2, &brush);
    FUNC2(InvalidParameter, status);

    status = FUNC0((HatchStyle)(HatchStyleMax + 1), 1, 2, &brush);
    FUNC2(InvalidParameter, status);
}