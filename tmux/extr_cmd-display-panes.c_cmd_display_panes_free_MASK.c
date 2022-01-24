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
struct cmd_display_panes_data {struct cmd_display_panes_data* command; int /*<<< orphan*/ * item; } ;
struct client {struct cmd_display_panes_data* overlay_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_display_panes_data*) ; 

__attribute__((used)) static void
FUNC2(struct client *c)
{
	struct cmd_display_panes_data	*cdata = c->overlay_data;

	if (cdata->item != NULL)
		FUNC0(cdata->item);
	FUNC1(cdata->command);
	FUNC1(cdata);
}