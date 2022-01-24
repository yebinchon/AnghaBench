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
struct winlink {int dummy; } ;
struct window {int dummy; } ;
struct session {int /*<<< orphan*/  windows; struct winlink* curw; } ;
struct mouse_event {int s; int w; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 struct session* FUNC0 (int) ; 
 struct window* FUNC1 (int) ; 
 struct winlink* FUNC2 (int /*<<< orphan*/ *,struct window*) ; 

struct winlink *
FUNC3(struct mouse_event *m, struct session **sp)
{
	struct session	*s;
	struct window	*w;
	struct winlink	*wl;

	if (!m->valid)
		return (NULL);
	if (m->s == -1 || (s = FUNC0(m->s)) == NULL)
		return (NULL);
	if (m->w == -1)
		wl = s->curw;
	else {
		if ((w = FUNC1(m->w)) == NULL)
			return (NULL);
		wl = FUNC2(&s->windows, w);
	}
	if (sp != NULL)
		*sp = s;
	return (wl);
}