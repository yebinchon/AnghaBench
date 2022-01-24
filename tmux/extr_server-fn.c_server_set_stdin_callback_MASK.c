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
struct client {int flags; void (* stdin_callback ) (struct client*,int,void*) ;void* stdin_callback_data; int /*<<< orphan*/  peer; scalar_t__ stdin_closed; int /*<<< orphan*/  references; int /*<<< orphan*/ * session; } ;

/* Variables and functions */
 int CLIENT_TERMINAL ; 
 int /*<<< orphan*/  MSG_STDIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void FUNC1 (struct client*,int,void*) ; 
 char* FUNC2 (char*) ; 

int
FUNC3(struct client *c, void (*cb)(struct client *, int,
    void *), void *cb_data, char **cause)
{
	if (c == NULL || c->session != NULL) {
		*cause = FUNC2("no client with stdin");
		return (-1);
	}
	if (c->flags & CLIENT_TERMINAL) {
		*cause = FUNC2("stdin is a tty");
		return (-1);
	}
	if (c->stdin_callback != NULL) {
		*cause = FUNC2("stdin is in use");
		return (-1);
	}

	c->stdin_callback_data = cb_data;
	c->stdin_callback = cb;

	c->references++;

	if (c->stdin_closed)
		c->stdin_callback(c, 1, c->stdin_callback_data);

	FUNC0(c->peer, MSG_STDIN, -1, NULL, 0);

	return (0);
}