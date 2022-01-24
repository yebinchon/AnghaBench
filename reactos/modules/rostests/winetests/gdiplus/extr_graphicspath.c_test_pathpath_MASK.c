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
typedef  int /*<<< orphan*/  GpPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pathpath_path ; 

__attribute__((used)) static void FUNC7(void)
{
    GpStatus status;
    GpPath* path1, *path2;

    FUNC3(FillModeAlternate, &path2);
    FUNC1(path2, 100.0, 100.0, 500.0, 700.0, 95.0, 100.0);

    FUNC3(FillModeAlternate, &path1);
    FUNC1(path1, 100.0, 100.0, 500.0, 700.0, 0.0, 90.0);
    status = FUNC2(path1, path2, FALSE);
    FUNC5(Ok, status);
    FUNC1(path1, 100.0, 100.0, 500.0, 700.0, -80.0, 100.0);
    status = FUNC2(path1, path2, TRUE);
    FUNC5(Ok, status);

    FUNC6(path1, pathpath_path, FUNC0(pathpath_path), FALSE);

    FUNC4(path1);
    FUNC4(path2);
}