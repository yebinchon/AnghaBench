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

__attribute__((used)) static const char *FUNC1(const char *h, const char *n)
{
	int hc, nc;
	const char *e = h;
	h += FUNC0(&hc, h);
	n += FUNC0(&nc, n);
	while (hc == nc)
	{
		e = h;
		if (hc == ' ')
			do
				h += FUNC0(&hc, h);
			while (hc == ' ');
		else
			h += FUNC0(&hc, h);
		if (nc == ' ')
			do
				n += FUNC0(&nc, n);
			while (nc == ' ');
		else
			n += FUNC0(&nc, n);
	}
	return nc == 0 ? e : NULL;
}