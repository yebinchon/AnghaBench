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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (char const*,char**,int) ; 

const char *FUNC2(fz_context *ctx, const char *s, int *a, int *b, int n)
{
	if (!s || !s[0])
		return NULL;

	if (s[0] == ',')
		s += 1;

	if (s[0] == 'N')
	{
		*a = n;
		s += 1;
	}
	else
		*a = FUNC1(s, (char**)&s, 10);

	if (s[0] == '-')
	{
		if (s[1] == 'N')
		{
			*b = n;
			s += 2;
		}
		else
			*b = FUNC1(s+1, (char**)&s, 10);
	}
	else
		*b = *a;

	*a = FUNC0(*a, 1, n);
	*b = FUNC0(*b, 1, n);

	return s;
}