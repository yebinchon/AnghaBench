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
typedef  size_t u_int ;
typedef  char u_char ;
struct window_pane {char const id; int /*<<< orphan*/  window; } ;
struct evbuffer {int dummy; } ;
struct client {int flags; TYPE_1__* session; } ;
struct TYPE_2__ {int /*<<< orphan*/  windows; } ;

/* Variables and functions */
 int CLIENT_CONTROL_NOOUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct client*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 struct evbuffer* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct client *c, struct window_pane *wp,
    const u_char *buf, size_t len)
{
	struct evbuffer *message;
	u_int		 i;

	if (c->session == NULL)
	    return;

	if (c->flags & CLIENT_CONTROL_NOOUTPUT)
		return;

	/*
	 * Only write input if the window pane is linked to a window belonging
	 * to the client's session.
	 */
	if (FUNC5(&c->session->windows, wp->window) != NULL) {
		message = FUNC3();
		if (message == NULL)
			FUNC4("out of memory");
		FUNC1(message, "%%output %%%u ", wp->id);
		for (i = 0; i < len; i++) {
			if (buf[i] < ' ' || buf[i] == '\\')
			    FUNC1(message, "\\%03o", buf[i]);
			else
			    FUNC1(message, "%c", buf[i]);
		}
		FUNC0(c, message);
		FUNC2(message);
	}
}