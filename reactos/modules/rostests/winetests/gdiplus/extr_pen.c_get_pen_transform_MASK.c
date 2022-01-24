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
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpMatrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(GpPen *pen, REAL *values)
{
    GpMatrix *matrix;
    GpStatus status;

    status = FUNC0(&matrix);
    FUNC4(Ok, status);

    status = FUNC3(pen, matrix);
    FUNC4(Ok, status);
    status = FUNC2(matrix, values);
    FUNC4(Ok, status);

    FUNC1(matrix);
}