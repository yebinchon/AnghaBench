#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numcols; int /*<<< orphan*/  hbmBitmap; int /*<<< orphan*/  hdcBitmap; TYPE_1__* column; } ;
struct TYPE_5__ {TYPE_2__* glyph; } ;
typedef  TYPE_2__ MATRIX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(MATRIX *matrix)
{
	int x;

	// free the matrix columns
	for(x = 0; x < matrix->numcols; x++)
		FUNC2(matrix->column[x].glyph);

	FUNC0(matrix->hdcBitmap);
	FUNC1(matrix->hbmBitmap);

	// now delete the matrix!
	FUNC2(matrix);
}