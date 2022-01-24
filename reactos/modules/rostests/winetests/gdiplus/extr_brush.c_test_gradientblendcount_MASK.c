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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpPathGradient ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  blendcount_ptf ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus status;
    GpPathGradient *brush;
    INT count;

    status = FUNC0(blendcount_ptf, 2, WrapModeClamp, &brush);
    FUNC3(Ok, status);

    status = FUNC2(NULL, NULL);
    FUNC3(InvalidParameter, status);
    status = FUNC2(NULL, &count);
    FUNC3(InvalidParameter, status);
    status = FUNC2(brush, NULL);
    FUNC3(InvalidParameter, status);

    status = FUNC2(brush, &count);
    FUNC3(Ok, status);
    FUNC3(1, count);

    FUNC1((GpBrush*) brush);
}