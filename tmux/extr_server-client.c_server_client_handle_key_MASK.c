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
struct key_event {int /*<<< orphan*/  key; } ;
struct cmdq_item {int dummy; } ;
struct client {int flags; int (* overlay_key ) (struct client*,struct key_event*) ;int /*<<< orphan*/ * prompt_string; struct session* session; } ;

/* Variables and functions */
 int CLIENT_DEAD ; 
 int CLIENT_READONLY ; 
 int CLIENT_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct client*,struct cmdq_item*) ; 
 struct cmdq_item* FUNC1 (int /*<<< orphan*/ ,struct key_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct client*) ; 
 int /*<<< orphan*/  server_client_key_callback ; 
 int /*<<< orphan*/  FUNC3 (struct client*) ; 
 scalar_t__ FUNC4 (struct client*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct client*,struct key_event*) ; 

int
FUNC6(struct client *c, struct key_event *event)
{
	struct session		*s = c->session;
	struct cmdq_item	*item;

	/* Check the client is good to accept input. */
	if (s == NULL || (c->flags & (CLIENT_DEAD|CLIENT_SUSPENDED)) != 0)
		return (0);

	/*
	 * Key presses in overlay mode and the command prompt are a special
	 * case. The queue might be blocked so they need to be processed
	 * immediately rather than queued.
	 */
	if (~c->flags & CLIENT_READONLY) {
		FUNC3(c);
		if (c->prompt_string != NULL) {
			if (FUNC4(c, event->key) == 0)
				return (0);
		}
		if (c->overlay_key != NULL) {
			switch (c->overlay_key(c, event)) {
			case 0:
				return (0);
			case 1:
				FUNC2(c);
				return (0);
			}
		}
		FUNC2(c);
	}

	/*
	 * Add the key to the queue so it happens after any commands queued by
	 * previous keys.
	 */
	item = FUNC1(server_client_key_callback, event);
	FUNC0(c, item);
	return (1);
}