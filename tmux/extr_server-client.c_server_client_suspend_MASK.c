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
struct session {int dummy; } ;
struct client {int flags; int /*<<< orphan*/  peer; int /*<<< orphan*/  tty; struct session* session; } ;

/* Variables and functions */
 int CLIENT_DETACHING ; 
 int CLIENT_SUSPENDED ; 
 int /*<<< orphan*/  MSG_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct client *c)
{
	struct session	*s = c->session;

	if (s == NULL || (c->flags & CLIENT_DETACHING))
		return;

	FUNC1(&c->tty);
	c->flags |= CLIENT_SUSPENDED;
	FUNC0(c->peer, MSG_SUSPEND, -1, NULL, 0);
}