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
typedef  int /*<<< orphan*/  GpMatrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flattenarc_path ; 
 int /*<<< orphan*/  flattenellipse_path ; 
 int /*<<< orphan*/  flattenline_path ; 
 int /*<<< orphan*/  flattenquater_path ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
    GpStatus status;
    GpPath *path;
    GpMatrix *m;

    status = FUNC5(FillModeAlternate, &path);
    FUNC11(Ok, status);
    status = FUNC4(&m);
    FUNC11(Ok, status);

    /* NULL arguments */
    status = FUNC8(NULL, NULL, 0.0);
    FUNC11(InvalidParameter, status);
    status = FUNC8(NULL, m, 0.0);
    FUNC11(InvalidParameter, status);

    /* flatten empty path */
    status = FUNC8(path, NULL, 1.0);
    FUNC11(Ok, status);

    status = FUNC10(path, 0);
    FUNC11(Ok, status);

    status = FUNC2(path, 0.0, 0.0, 100.0, 50.0);
    FUNC11(Ok, status);

    status = FUNC8(path, NULL, 1.0);
    FUNC11(Ok, status);
    FUNC12(path, flattenellipse_path, FUNC0(flattenellipse_path), TRUE);

    status = FUNC9(path);
    FUNC11(Ok, status);
    status = FUNC3(path, 5.0, 10.0, 50.0, 100.0);
    FUNC11(Ok, status);
    status = FUNC8(path, NULL, 1.0);
    FUNC11(Ok, status);
    FUNC12(path, flattenline_path, FUNC0(flattenline_path), FALSE);

    status = FUNC9(path);
    FUNC11(Ok, status);
    status = FUNC1(path, 0.0, 0.0, 100.0, 50.0, 0.0, 90.0);
    FUNC11(Ok, status);
    status = FUNC8(path, NULL, 1.0);
    FUNC11(Ok, status);
    FUNC12(path, flattenarc_path, FUNC0(flattenarc_path), TRUE);

    /* easy case - quater of a full circle */
    status = FUNC9(path);
    FUNC11(Ok, status);
    status = FUNC1(path, 0.0, 0.0, 100.0, 100.0, 0.0, 90.0);
    FUNC11(Ok, status);
    status = FUNC8(path, NULL, 1.0);
    FUNC11(Ok, status);
    FUNC12(path, flattenquater_path, FUNC0(flattenquater_path), FALSE);

    FUNC6(m);
    FUNC7(path);
}