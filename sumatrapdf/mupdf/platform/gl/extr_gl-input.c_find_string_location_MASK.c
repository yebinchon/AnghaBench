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
 int FUNC0 (int*,char*) ; 
 float FUNC1 (int) ; 

__attribute__((used)) static char *FUNC2(char *s, char *e, float w, float x)
{
	int c;
	while (s < e)
	{
		int n = FUNC0(&c, s);
		float cw = FUNC1(c);
		if (w + (cw / 2) >= x)
			return s;
		w += cw;
		s += n;
	}
	return e;
}