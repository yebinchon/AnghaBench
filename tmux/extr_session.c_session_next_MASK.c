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
struct session {int /*<<< orphan*/  windows; int /*<<< orphan*/ * curw; } ;

/* Variables and functions */
 struct winlink* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct winlink* FUNC1 (struct winlink*) ; 
 int FUNC2 (struct session*,struct winlink*) ; 
 struct winlink* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  winlinks ; 

int
FUNC4(struct session *s, int alert)
{
	struct winlink	*wl;

	if (s->curw == NULL)
		return (-1);

	wl = FUNC3(s->curw);
	if (alert)
		wl = FUNC1(wl);
	if (wl == NULL) {
		wl = FUNC0(winlinks, &s->windows);
		if (alert && ((wl = FUNC1(wl)) == NULL))
			return (-1);
	}
	return (FUNC2(s, wl));
}