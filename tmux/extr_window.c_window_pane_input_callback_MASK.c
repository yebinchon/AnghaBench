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
typedef  int /*<<< orphan*/  u_char ;
struct window_pane_input_data {int /*<<< orphan*/  item; int /*<<< orphan*/  wp; } ;
struct window_pane {int dummy; } ;
struct evbuffer {int dummy; } ;
struct client {int flags; int /*<<< orphan*/ * stdin_callback; struct evbuffer* stdin_data; } ;

/* Variables and functions */
 int CLIENT_DEAD ; 
 int CLIENT_EXIT ; 
 int /*<<< orphan*/ * FUNC0 (struct evbuffer*) ; 
 size_t FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct window_pane_input_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_pane*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct client*) ; 
 struct window_pane* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct client *c, int closed, void *data)
{
	struct window_pane_input_data	*cdata = data;
	struct window_pane		*wp;
	struct evbuffer			*evb = c->stdin_data;
	u_char				*buf = FUNC0(evb);
	size_t				 len = FUNC1(evb);

	wp = FUNC7(cdata->wp);
	if (wp == NULL || closed || c->flags & CLIENT_DEAD) {
		if (wp == NULL)
			c->flags |= CLIENT_EXIT;
		FUNC3(evb, len);

		c->stdin_callback = NULL;
		FUNC6(c);

		FUNC2(cdata->item);
		FUNC4(cdata);

		return;
	}

	FUNC5(wp, buf, len);
	FUNC3(evb, len);
}