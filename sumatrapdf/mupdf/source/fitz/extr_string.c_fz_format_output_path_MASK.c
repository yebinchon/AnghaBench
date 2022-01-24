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
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 

void
FUNC6(fz_context *ctx, char *path, size_t size, const char *fmt, int page)
{
	const char *s, *p;
	char num[40];
	int i, n;
	int z = 0;

	for (i = 0; page; page /= 10)
		num[i++] = '0' + page % 10;
	num[i] = 0;

	s = p = FUNC3(fmt, '%');
	if (p)
	{
		++p;
		while (*p >= '0' && *p <= '9')
			z = z * 10 + (*p++ - '0');
	}
	if (p && *p == 'd')
	{
		++p;
	}
	else
	{
		s = p = FUNC5(fmt, '.');
		if (!p)
			s = p = fmt + FUNC4(fmt);
	}

	if (z < 1)
		z = 1;
	while (i < z && i < (int)sizeof num)
		num[i++] = '0';
	n = s - fmt;
	if (n + i + FUNC4(p) >= size)
		FUNC1(ctx, FZ_ERROR_GENERIC, "path name buffer overflow");
	FUNC2(path, fmt, n);
	while (i > 0)
		path[n++] = num[--i];
	FUNC0(path + n, p, size - n);
}