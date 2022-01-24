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
struct socket_server {int /*<<< orphan*/  event_fd; int /*<<< orphan*/  recvctrl_fd; int /*<<< orphan*/  sendctrl_fd; struct socket* slot; } ;
struct socket_message {int dummy; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ type; int /*<<< orphan*/  dw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket_server*) ; 
 int MAX_SOCKET ; 
 scalar_t__ SOCKET_TYPE_RESERVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void 
FUNC6(struct socket_server *ss) {
	int i;
	struct socket_message dummy;
	for (i=0;i<MAX_SOCKET;i++) {
		struct socket *s = &ss->slot[i];
		struct socket_lock l;
		FUNC3(s, &l);
		if (s->type != SOCKET_TYPE_RESERVE) {
			FUNC2(ss, s, &l, &dummy);
		}
		FUNC5(&s->dw_lock);
	}
	FUNC1(ss->sendctrl_fd);
	FUNC1(ss->recvctrl_fd);
	FUNC4(ss->event_fd);
	FUNC0(ss);
}