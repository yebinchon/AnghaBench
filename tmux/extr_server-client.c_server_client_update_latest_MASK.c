#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct window {int /*<<< orphan*/  options; struct client* latest; } ;
struct client {TYPE_2__* session; } ;
struct TYPE_4__ {TYPE_1__* curw; } ;
struct TYPE_3__ {struct window* window; } ;

/* Variables and functions */
 scalar_t__ WINDOW_SIZE_LATEST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct window*) ; 

__attribute__((used)) static void
FUNC2(struct client *c)
{
	struct window	*w;

	if (c->session == NULL)
		return;
	w = c->session->curw->window;

	if (w->latest == c)
		return;
	w->latest = c;

	if (FUNC0(w->options, "window-size") == WINDOW_SIZE_LATEST)
		FUNC1(w);
}