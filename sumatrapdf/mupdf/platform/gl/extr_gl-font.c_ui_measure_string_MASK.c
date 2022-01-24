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

float FUNC2(const char *str)
{
	int c;
	float x = 0;
	while (*str)
	{
		str += FUNC0(&c, str);
		x += FUNC1(c);
	}
	return x;
}