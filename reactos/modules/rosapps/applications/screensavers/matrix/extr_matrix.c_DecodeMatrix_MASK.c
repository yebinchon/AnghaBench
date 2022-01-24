#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numcols; scalar_t__ message; int /*<<< orphan*/ * column; } ;
typedef  TYPE_1__ MATRIX ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int GLYPH_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(HWND hwnd, MATRIX *matrix)
{
	int x;
	HDC hdc = FUNC1(hwnd);

	for(x = 0; x < matrix->numcols; x++)
	{
		FUNC2(&matrix->column[x]);
		FUNC5(&matrix->column[x]);
		FUNC3(&matrix->column[x], matrix, hdc, x * GLYPH_WIDTH);
	}

	if(matrix->message)
		FUNC0(hdc, matrix);

	FUNC4(hwnd, hdc);
}