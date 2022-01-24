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
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpPath *path;
    GpStatus status;
    INT count;
    BOOL result;

    status = FUNC1(FillModeAlternate, &path);
    FUNC5(Ok, status);

    status = FUNC0(path, 0.0, 0.0, -5.0, 5.0);
    FUNC5(Ok, status);

    status = FUNC3(path, &count);
    FUNC5(Ok, status);
    FUNC5(0, count);

    status = FUNC4(path, -2.0, 2.0, NULL, &result);
    FUNC5(Ok, status);
    FUNC5(FALSE, result);

    status = FUNC0(path, 0.0, 0.0, 5.0, -5.0);
    FUNC5(Ok, status);

    status = FUNC3(path, &count);
    FUNC5(Ok, status);
    FUNC5(0, count);

    status = FUNC0(path, 0.0, 0.0, 0.0, 5.0);
    FUNC5(Ok, status);

    status = FUNC3(path, &count);
    FUNC5(Ok, status);
    FUNC5(0, count);

    status = FUNC0(path, 0.0, 0.0, 5.0, 0.0);
    FUNC5(Ok, status);

    status = FUNC3(path, &count);
    FUNC5(Ok, status);
    FUNC5(0, count);

    status = FUNC0(path, 0.0, 0.0, 5.0, 0.1);
    FUNC5(Ok, status);

    status = FUNC3(path, &count);
    FUNC5(Ok, status);
    FUNC5(4, count);

    FUNC2(path);
}