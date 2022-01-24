#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct screen {int mode; TYPE_1__* grid; scalar_t__ rlower; scalar_t__ rupper; scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_2__ {int /*<<< orphan*/  sy; int /*<<< orphan*/  hsize; } ;

/* Variables and functions */
 int MODE_CURSOR ; 
 int MODE_WRAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen*) ; 
 scalar_t__ FUNC4 (struct screen*) ; 

void
FUNC5(struct screen *s)
{
	s->cx = 0;
	s->cy = 0;

	s->rupper = 0;
	s->rlower = FUNC4(s) - 1;

	s->mode = MODE_CURSOR | MODE_WRAP;

	FUNC3(s);

	FUNC0(s->grid, s->grid->hsize, s->grid->sy, 8);

	FUNC1(s);
	FUNC2(s);
}