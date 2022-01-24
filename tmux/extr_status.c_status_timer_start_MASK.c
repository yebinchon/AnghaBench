#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct session {int /*<<< orphan*/  options; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct client {TYPE_1__ status; struct session* session; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ,struct client*),struct client*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct client*) ; 

void
FUNC5(struct client *c)
{
	struct session	*s = c->session;

	if (FUNC0(&c->status.timer))
		FUNC1(&c->status.timer);
	else
		FUNC2(&c->status.timer, status_timer_callback, c);

	if (s != NULL && FUNC3(s->options, "status"))
		FUNC4(-1, 0, c);
}