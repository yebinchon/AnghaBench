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
typedef  int /*<<< orphan*/  zed_strings_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char **
FUNC7(zed_strings_t *zsp)
{
	int num_ptrs;
	int buflen;
	char *buf;
	char **pp;
	char *p;
	const char *q;
	int i;
	int len;

	num_ptrs = FUNC4(zsp) + 1;
	buflen = num_ptrs * sizeof (char *);
	for (q = FUNC5(zsp); q; q = FUNC6(zsp))
		buflen += FUNC3(q) + 1;

	buf = FUNC1(1, buflen);
	if (!buf)
		return (NULL);

	pp = (char **)buf;
	p = buf + (num_ptrs * sizeof (char *));
	i = 0;
	for (q = FUNC5(zsp); q; q = FUNC6(zsp)) {
		pp[i] = p;
		len = FUNC3(q) + 1;
		FUNC2(p, q, len);
		p += len;
		i++;
	}
	pp[i] = NULL;
	FUNC0(buf + buflen == p);
	return ((char **)buf);
}