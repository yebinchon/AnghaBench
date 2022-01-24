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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (double,double,double,double,double,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpMatrix *matrix;
    GpStatus stat;
    BOOL result;

    stat = FUNC2(NULL, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC2(NULL, &result);
    FUNC4(InvalidParameter, stat);

    stat = FUNC0(1.0, 0.0, 0.0, 1.0, 0.0, 0.0, &matrix);
    FUNC4(Ok, stat);

    stat = FUNC2(matrix, NULL);
    FUNC4(InvalidParameter, stat);

    result = FALSE;
    stat = FUNC2(matrix, &result);
    FUNC4(Ok, stat);
    FUNC5(!!result, "got %d\n", result);

    stat = FUNC3(matrix, 1.0, 0.0, 0.0, 1.0, 0.1, 0.0);
    FUNC4(Ok, stat);

    result = TRUE;
    stat = FUNC2(matrix, &result);
    FUNC4(Ok, stat);
    FUNC5(!result, "got %d\n", result);

    FUNC1(matrix);
}