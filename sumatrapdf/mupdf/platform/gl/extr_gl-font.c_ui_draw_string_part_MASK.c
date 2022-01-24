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
struct TYPE_2__ {scalar_t__ baseline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*) ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (float,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(float x, float y, const char *s, const char *e)
{
	int c;
	FUNC1();
	while (s < e)
	{
		s += FUNC0(&c, s);
		x += FUNC2(x, y + ui.baseline, c);
	}
	FUNC3();
}