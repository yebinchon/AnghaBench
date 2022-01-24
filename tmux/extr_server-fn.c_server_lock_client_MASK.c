#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  term; } ;
struct client {int flags; int /*<<< orphan*/  peer; TYPE_2__ tty; TYPE_1__* session; } ;
struct TYPE_4__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int CLIENT_CONTROL ; 
 int CLIENT_SUSPENDED ; 
 scalar_t__ IMSG_HEADER_SIZE ; 
 scalar_t__ MAX_IMSGSIZE ; 
 int /*<<< orphan*/  MSG_LOCK ; 
 int /*<<< orphan*/  TTYC_CLEAR ; 
 int /*<<< orphan*/  TTYC_E3 ; 
 int /*<<< orphan*/  TTYC_SMCUP ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct client *c)
{
	const char	*cmd;

	if (c->flags & CLIENT_CONTROL)
		return;

	if (c->flags & CLIENT_SUSPENDED)
		return;

	cmd = FUNC0(c->session->options, "lock-command");
	if (*cmd == '\0' || FUNC2(cmd) + 1 > MAX_IMSGSIZE - IMSG_HEADER_SIZE)
		return;

	FUNC4(&c->tty);
	FUNC3(&c->tty, FUNC5(c->tty.term, TTYC_SMCUP));
	FUNC3(&c->tty, FUNC5(c->tty.term, TTYC_CLEAR));
	FUNC3(&c->tty, FUNC5(c->tty.term, TTYC_E3));

	c->flags |= CLIENT_SUSPENDED;
	FUNC1(c->peer, MSG_LOCK, -1, cmd, FUNC2(cmd) + 1);
}