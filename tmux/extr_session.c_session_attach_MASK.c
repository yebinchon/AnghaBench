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
struct winlink {struct session* session; } ;
struct window {int dummy; } ;
struct session {int /*<<< orphan*/  windows; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct session*,struct window*) ; 
 int /*<<< orphan*/  FUNC1 (struct session*) ; 
 struct winlink* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct winlink*,struct window*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,int) ; 

struct winlink *
FUNC5(struct session *s, struct window *w, int idx, char **cause)
{
	struct winlink	*wl;

	if ((wl = FUNC2(&s->windows, idx)) == NULL) {
		FUNC4(cause, "index in use: %d", idx);
		return (NULL);
	}
	wl->session = s;
	FUNC3(wl, w);
	FUNC0("window-linked", s, w);

	FUNC1(s);
	return (wl);
}