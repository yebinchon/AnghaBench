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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (double,double,double,double,double,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus status;
    GpMatrix *matrix = NULL;
    BOOL result;

    /* NULL arguments */
    status = FUNC2(NULL, &result);
    FUNC3(InvalidParameter, status);
    status = FUNC2((GpMatrix*)0xdeadbeef, NULL);
    FUNC3(InvalidParameter, status);
    status = FUNC2(NULL, NULL);
    FUNC3(InvalidParameter, status);

    /* invertible */
    FUNC0(1.0, 1.2, 2.3, -1.0, 2.0, 3.0, &matrix);
    status = FUNC2(matrix, &result);
    FUNC3(Ok, status);
    FUNC3(TRUE, result);
    FUNC1(matrix);

    /* noninvertible */
    FUNC0(2.0, -1.0, 6.0, -3.0, 2.2, 3.0, &matrix);
    status = FUNC2(matrix, &result);
    FUNC3(Ok, status);
    FUNC3(FALSE, result);
    FUNC1(matrix);
}