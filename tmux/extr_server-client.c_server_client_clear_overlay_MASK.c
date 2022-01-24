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
struct TYPE_2__ {int flags; } ;
struct client {TYPE_1__ tty; int /*<<< orphan*/ * overlay_key; int /*<<< orphan*/ * overlay_draw; int /*<<< orphan*/  (* overlay_free ) (struct client*) ;int /*<<< orphan*/  overlay_timer; } ;

/* Variables and functions */
 int TTY_FREEZE ; 
 int TTY_NOCURSOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct client*) ; 
 int /*<<< orphan*/  FUNC3 (struct client*) ; 

__attribute__((used)) static void
FUNC4(struct client *c)
{
	if (c->overlay_draw == NULL)
		return;

	if (FUNC0(&c->overlay_timer))
		FUNC1(&c->overlay_timer);

	if (c->overlay_free != NULL)
		c->overlay_free(c);

	c->overlay_draw = NULL;
	c->overlay_key = NULL;

	c->tty.flags &= ~(TTY_FREEZE|TTY_NOCURSOR);
	FUNC2(c);
}