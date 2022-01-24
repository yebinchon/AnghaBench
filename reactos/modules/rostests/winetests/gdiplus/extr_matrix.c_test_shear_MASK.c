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
typedef  int /*<<< orphan*/  GpMatrix ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double,double,double,double,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  MatrixOrderAppend ; 
 int /*<<< orphan*/  MatrixOrderPrepend ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    GpStatus status;
    GpMatrix *matrix  = NULL;
    GpMatrix *sheared = NULL;
    BOOL equal;

    /* NULL */
    status = FUNC3(NULL, 0.0, 0.0, MatrixOrderPrepend);
    FUNC4(InvalidParameter, status);

    /* X only shearing, MatrixOrderPrepend */
    FUNC0(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix, 1.5, 0.0, MatrixOrderPrepend);
    FUNC4(Ok, status);
    FUNC0(1.0, 2.0, 5.5, 2.0, 6.0, 3.0, &sheared);
    FUNC2(matrix, sheared, &equal);
    FUNC4(TRUE, equal);
    FUNC1(sheared);
    FUNC1(matrix);

    /* X only shearing, MatrixOrderAppend */
    FUNC0(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix, 1.5, 0.0, MatrixOrderAppend);
    FUNC4(Ok, status);
    FUNC0(4.0, 2.0, 2.5, -1.0, 10.5, 3.0, &sheared);
    FUNC2(matrix, sheared, &equal);
    FUNC4(TRUE, equal);
    FUNC1(sheared);
    FUNC1(matrix);

    /* Y only shearing, MatrixOrderPrepend */
    FUNC0(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix, 0.0, 1.5, MatrixOrderPrepend);
    FUNC4(Ok, status);
    FUNC0(7.0, 0.5, 4.0, -1.0, 6.0, 3.0, &sheared);
    FUNC2(matrix, sheared, &equal);
    FUNC4(TRUE, equal);
    FUNC1(sheared);
    FUNC1(matrix);

    /* Y only shearing, MatrixOrderAppend */
    FUNC0(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix, 0.0, 1.5, MatrixOrderAppend);
    FUNC4(Ok, status);
    FUNC0(1.0, 3.5, 4.0, 5.0, 6.0, 12.0, &sheared);
    FUNC2(matrix, sheared, &equal);
    FUNC4(TRUE, equal);
    FUNC1(sheared);
    FUNC1(matrix);

    /* X,Y shearing, MatrixOrderPrepend */
    FUNC0(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix, 4.0, 1.5, MatrixOrderPrepend);
    FUNC4(Ok, status);
    FUNC0(7.0, 0.5, 8.0, 7.0, 6.0, 3.0, &sheared);
    FUNC2(matrix, sheared, &equal);
    FUNC4(TRUE, equal);
    FUNC1(sheared);
    FUNC1(matrix);

    /* X,Y shearing, MatrixOrderAppend */
    FUNC0(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = FUNC3(matrix, 4.0, 1.5, MatrixOrderAppend);
    FUNC4(Ok, status);
    FUNC0(9.0, 3.5, 0.0, 5.0, 18.0, 12.0, &sheared);
    FUNC2(matrix, sheared, &equal);
    FUNC4(TRUE, equal);
    FUNC1(sheared);
    FUNC1(matrix);
}