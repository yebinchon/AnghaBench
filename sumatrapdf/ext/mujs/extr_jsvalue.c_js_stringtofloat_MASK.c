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
 double FUNC0 (char const*,char**) ; 
 double FUNC1 (char const*,char**,int) ; 

double FUNC2(const char *s, char **ep)
{
	char *end;
	double n;
	const char *e = s;
	int isflt = 0;
	if (*e == '+' || *e == '-') ++e;
	while (*e >= '0' && *e <= '9') ++e;
	if (*e == '.') { ++e; isflt = 1; }
	while (*e >= '0' && *e <= '9') ++e;
	if (*e == 'e' || *e == 'E') {
		++e;
		if (*e == '+' || *e == '-') ++e;
		while (*e >= '0' && *e <= '9') ++e;
		isflt = 1;
	}
	if (isflt || e - s > 9)
		n = FUNC0(s, &end);
	else
		n = FUNC1(s, &end, 10);
	if (end == e) {
		*ep = (char*)e;
		return n;
	}
	*ep = (char*)s;
	return 0;
}