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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*) ; 
 scalar_t__ FUNC1 (int) ; 

float FUNC2(const char *s, const char *e)
{
	int c;
	float w = 0;
	while (s < e)
	{
		s += FUNC0(&c, s);
		w += FUNC1(c);
	}
	return w;
}