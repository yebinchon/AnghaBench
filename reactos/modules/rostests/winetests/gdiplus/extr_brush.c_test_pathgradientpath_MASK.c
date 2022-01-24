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
typedef  int /*<<< orphan*/  GpPathGradient ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FillModeWinding ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NotImplemented ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  blendcount_ptf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStatus status;
    GpPath *path=NULL;
    GpPathGradient *grad=NULL;

    status = FUNC1(blendcount_ptf, 2, WrapModeClamp, &grad);
    FUNC5(Ok, status);

    status = FUNC4(grad, NULL);
    FUNC5(NotImplemented, status);

    status = FUNC0(FillModeWinding, &path);
    FUNC5(Ok, status);

    status = FUNC4(NULL, path);
    FUNC5(NotImplemented, status);

    status = FUNC4(grad, path);
    FUNC5(NotImplemented, status);

    status = FUNC3(path);
    FUNC5(Ok, status);

    status = FUNC2((GpBrush*)grad);
    FUNC5(Ok, status);
}