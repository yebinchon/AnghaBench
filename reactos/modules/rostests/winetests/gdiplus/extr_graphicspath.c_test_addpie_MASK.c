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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  addpie_path ; 
 int /*<<< orphan*/  addpie_path2 ; 
 int /*<<< orphan*/  addpie_path3 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    GpStatus status;
    GpPath *path;

    FUNC2(FillModeAlternate, &path);

    /* NULL argument */
    status = FUNC1(NULL, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    FUNC5(InvalidParameter, status);

    status = FUNC1(path, 0.0, 0.0, 100.0, 50.0, 10.0, 50.0);
    FUNC5(Ok, status);
    FUNC6(path, addpie_path, FUNC0(addpie_path), FALSE);
    status = FUNC4(path);
    FUNC5(Ok, status);

    /* zero width base ellipse */
    status = FUNC1(path, 0.0, 0.0, 0.0, 60.0, -90.0, 24.0);
    FUNC5(InvalidParameter, status);
    FUNC6(path, addpie_path2, FUNC0(addpie_path2), FALSE);
    status = FUNC4(path);
    FUNC5(Ok, status);

    /* zero height base ellipse */
    status = FUNC1(path, 0.0, 0.0, 60.0, 0.0 , -90.0, 24.0);
    FUNC5(InvalidParameter, status);
    FUNC6(path, addpie_path3, FUNC0(addpie_path3), FALSE);

    FUNC3(path);
}