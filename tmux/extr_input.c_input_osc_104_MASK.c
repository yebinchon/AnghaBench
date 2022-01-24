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
struct window_pane {int dummy; } ;
struct input_ctx {struct window_pane* wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 long FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct window_pane*) ; 
 int /*<<< orphan*/  FUNC4 (struct window_pane*,long) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(struct input_ctx *ictx, const char *p)
{
	struct window_pane	*wp = ictx->wp;
	char			*copy, *s;
	long			 idx;

	if (*p == '\0') {
		FUNC3(wp);
		return;
	}

	copy = s = FUNC5(p);
	while (*s != '\0') {
		idx = FUNC2(s, &s, 10);
		if (*s != '\0' && *s != ';')
			goto bad;
		if (idx < 0 || idx >= 0x100)
			goto bad;

		FUNC4(wp, idx);
		if (*s == ';')
			s++;
	}
	FUNC0(copy);
	return;

bad:
	FUNC1("bad OSC 104: %s", p);
	FUNC0(copy);
}