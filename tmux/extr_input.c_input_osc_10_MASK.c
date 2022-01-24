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
struct window_pane {int flags; int /*<<< orphan*/  options; } ;
struct input_ctx {struct window_pane* wp; } ;

/* Variables and functions */
 int PANE_REDRAW ; 
 int PANE_STYLECHANGED ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct input_ctx *ictx, const char *p)
{
	struct window_pane	*wp = ictx->wp;
	u_int			 r, g, b;
	char			 tmp[16];

	if (FUNC3(p, "?") == 0)
		return;

	if (!FUNC0(p, &r, &g, &b))
		goto bad;
	FUNC4(tmp, sizeof tmp, "fg=#%02x%02x%02x", r, g, b);
	FUNC2(wp->options, "window-style", 1, tmp);
	FUNC2(wp->options, "window-active-style", 1, tmp);
	wp->flags |= (PANE_REDRAW|PANE_STYLECHANGED);

	return;

bad:
	FUNC1("bad OSC 10: %s", p);
}