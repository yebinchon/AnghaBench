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
typedef  int /*<<< orphan*/  u_int ;
struct window_pane {int dummy; } ;
struct input_ctx {struct window_pane* wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char**,char*) ; 
 long FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct window_pane*,long,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(struct input_ctx *ictx, const char *p)
{
	struct window_pane	*wp = ictx->wp;
	char			*copy, *s, *next = NULL;
	long	 		 idx;
	u_int			 r, g, b;

	copy = s = FUNC7(p);
	while (s != NULL && *s != '\0') {
		idx = FUNC5(s, &next, 10);
		if (*next++ != ';')
			goto bad;
		if (idx < 0 || idx >= 0x100)
			goto bad;

		s = FUNC4(&next, ";");
		if (!FUNC2(s, &r, &g, &b)) {
			s = next;
			continue;
		}

		FUNC6(wp, idx, FUNC0(r, g, b));
		s = next;
	}

	FUNC1(copy);
	return;

bad:
	FUNC3("bad OSC 4: %s", p);
	FUNC1(copy);
}