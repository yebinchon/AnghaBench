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
typedef  int u_int ;
struct screen {TYPE_1__* grid; } ;
struct TYPE_2__ {int sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*,int) ; 
 int FUNC3 (struct screen*) ; 
 int FUNC4 (struct screen*) ; 

void
FUNC5(struct screen *s, u_int sx, u_int sy, int reflow)
{
	if (sx < 1)
		sx = 1;
	if (sy < 1)
		sy = 1;

	if (sx != FUNC3(s)) {
		s->grid->sx = sx;
		FUNC1(s);
	} else
		reflow = 0;

	if (sy != FUNC4(s))
		FUNC2(s, sy);

	if (reflow)
		FUNC0(s, sx);
}