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
struct winlink {int /*<<< orphan*/  window; } ;
struct session {struct winlink* curw; int /*<<< orphan*/  lastw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct winlink*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct winlink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct winlink*) ; 

int
FUNC6(struct session *s, struct winlink *wl)
{
	if (wl == NULL)
		return (-1);
	if (wl == s->curw)
		return (1);

	FUNC5(&s->lastw, wl);
	FUNC4(&s->lastw, s->curw);
	s->curw = wl;
	FUNC3(wl);
	FUNC2(wl->window);
	FUNC1(wl->window);
	FUNC0("session-window-changed", s);
	return (0);
}