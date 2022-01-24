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
typedef  int /*<<< orphan*/  REAL ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpMatrix ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (double,double,double,double,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,double,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpStatus status;
    GpMatrix *matrix = NULL;
    GpMatrix *inverted = NULL;
    BOOL equal = FALSE;
    REAL elems[6];

    /* NULL */
    status = FUNC3(NULL);
    FUNC6(InvalidParameter, status);

    /* noninvertible */
    FUNC0(2.0, -1.0, 6.0, -3.0, 2.2, 3.0, &matrix);
    status = FUNC3(matrix);
    FUNC6(InvalidParameter, status);
    FUNC1(matrix);

    /* invertible */
    FUNC0(3.0, -2.0, 5.0, 2.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix);
    FUNC6(Ok, status);
    FUNC0(2.0/16.0, 2.0/16.0, -5.0/16.0, 3.0/16.0, 3.0/16.0, -21.0/16.0, &inverted);
    FUNC4(matrix, inverted, &equal);
    FUNC6(TRUE, equal);
    FUNC1(matrix);

    FUNC0(0.0006, 0, 0, 0.0006, 400, 400, &matrix);
    status = FUNC3(matrix);
    FUNC6(Ok, status);
    status = FUNC2(matrix, elems);
    FUNC6(Ok, status);
    FUNC7(FUNC5(elems[0], 1666.666504, 1), "elems[0] = %.10g\n", elems[0]);
    FUNC7(FUNC5(elems[1], 0, 0), "elems[1] = %.10g\n", elems[1]);
    FUNC7(FUNC5(elems[2], 0, 0), "elems[2] = %.10g\n", elems[2]);
    FUNC7(FUNC5(elems[3], 1666.666504, 1), "elems[3] = %.10g\n", elems[3]);
    FUNC7(FUNC5(elems[4], -666666.6875, 1), "elems[4] = %.10g\n", elems[4]);
    FUNC7(FUNC5(elems[5], -666666.6875, 1), "elems[5] = %.10g\n", elems[5]);

    FUNC1(inverted);
    FUNC1(matrix);
}