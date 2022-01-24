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
typedef  int u_int ;
struct screen {int /*<<< orphan*/ * tabs; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct screen*) ; 

void
FUNC5(struct screen *s)
{
	u_int	i;

	FUNC3(s->tabs);

	if ((s->tabs = FUNC0(FUNC4(s))) == NULL)
		FUNC2("bit_alloc failed");
	for (i = 8; i < FUNC4(s); i += 8)
		FUNC1(s->tabs, i);
}