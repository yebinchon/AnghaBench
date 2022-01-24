#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numcols; int numrows; int width; int height; scalar_t__ message; int /*<<< orphan*/  hbmBitmap; int /*<<< orphan*/  hdcBitmap; TYPE_1__* column; } ;
struct TYPE_4__ {int length; int countdown; int state; int runlen; scalar_t__* glyph; int /*<<< orphan*/  started; } ;
typedef  int /*<<< orphan*/  MATRIX_COLUMN ;
typedef  TYPE_2__ MATRIX ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GLYPH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int GLYPH_HEIGHT ; 
 int GLYPH_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDB_BITMAP1 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 void* FUNC10 (int) ; 

MATRIX *FUNC11(HWND hwnd, int width, int height)
{
	MATRIX *matrix;
	HDC hdc;
	int x, y;

	int rows = height / GLYPH_HEIGHT + 1;
	int cols = width  / GLYPH_WIDTH  + 1;

	// allocate matrix!
	if((matrix = FUNC10(sizeof(MATRIX) + sizeof(MATRIX_COLUMN) * cols)) == 0)
		return 0;

	matrix->numcols = cols;
	matrix->numrows = rows;
	matrix->width   = width;
	matrix->height  = height;

	for(x = 0; x < cols; x++)
	{
		matrix->column[x].length       = rows;
		matrix->column[x].started      = FALSE;
		matrix->column[x].countdown    = FUNC9() % 100;
		matrix->column[x].state        = FUNC9() % 2;
		matrix->column[x].runlen       = FUNC9() % 20 + 3;

		matrix->column[x].glyph  = FUNC10(sizeof(GLYPH) * (rows+16));

		for(y = 0; y < rows; y++)
			matrix->column[x].glyph[y] = 0;//;
	}

	// Load bitmap!!
	hdc = FUNC1(NULL);
	matrix->hbmBitmap = FUNC5(FUNC2(0), FUNC6(IDB_BITMAP1));
	matrix->hdcBitmap = FUNC0(hdc);
	FUNC8(matrix->hdcBitmap, matrix->hbmBitmap);
	FUNC7(NULL, hdc);

	// Create a message for this window...only if we are
	// screen-saving (not if in preview mode)
	if(FUNC3(hwnd) == 0)
		matrix->message = FUNC4(hwnd, matrix->numcols, matrix->numrows);
	else
		matrix->message = 0;

	return matrix;
}