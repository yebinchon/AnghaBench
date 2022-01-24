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
struct window_pane_input_data {int /*<<< orphan*/  wp; struct cmdq_item* item; } ;
struct window_pane {int flags; int /*<<< orphan*/  id; } ;
struct cmdq_item {struct client* client; } ;
struct client {int dummy; } ;

/* Variables and functions */
 int PANE_EMPTY ; 
 int FUNC0 (struct client*,int /*<<< orphan*/ ,struct window_pane_input_data*,char**) ; 
 int /*<<< orphan*/  window_pane_input_callback ; 
 struct window_pane_input_data* FUNC1 (int) ; 
 char* FUNC2 (char*) ; 

int
FUNC3(struct window_pane *wp, struct cmdq_item *item,
    char **cause)
{
	struct client			*c = item->client;
	struct window_pane_input_data	*cdata;

	if (~wp->flags & PANE_EMPTY) {
		*cause = FUNC2("pane is not empty");
		return (-1);
	}

	cdata = FUNC1(sizeof *cdata);
	cdata->item = item;
	cdata->wp = wp->id;

	return (FUNC0(c, window_pane_input_callback, cdata,
	    cause));
}