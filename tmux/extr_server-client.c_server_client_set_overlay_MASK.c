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
typedef  int u_int ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int flags; } ;
struct client {TYPE_1__ tty; void* overlay_data; int /*<<< orphan*/  overlay_free; int /*<<< orphan*/  overlay_key; int /*<<< orphan*/ * overlay_draw; int /*<<< orphan*/  overlay_timer; } ;
typedef  int /*<<< orphan*/  overlay_key_cb ;
typedef  int /*<<< orphan*/  overlay_free_cb ;
typedef  int /*<<< orphan*/ * overlay_draw_cb ;

/* Variables and functions */
 int TTY_FREEZE ; 
 int TTY_NOCURSOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct client*) ; 
 int /*<<< orphan*/  FUNC4 (struct client*) ; 
 int /*<<< orphan*/  server_client_overlay_timer ; 
 int /*<<< orphan*/  FUNC5 (struct client*) ; 

void
FUNC6(struct client *c, u_int delay, overlay_draw_cb drawcb,
    overlay_key_cb keycb, overlay_free_cb freecb, void *data)
{
	struct timeval	tv;

	if (c->overlay_draw != NULL)
		FUNC4(c);

	tv.tv_sec = delay / 1000;
	tv.tv_usec = (delay % 1000) * 1000L;

	if (FUNC0(&c->overlay_timer))
		FUNC2(&c->overlay_timer);
	FUNC3(&c->overlay_timer, server_client_overlay_timer, c);
	if (delay != 0)
		FUNC1(&c->overlay_timer, &tv);

	c->overlay_draw = drawcb;
	c->overlay_key = keycb;
	c->overlay_free = freecb;
	c->overlay_data = data;

	c->tty.flags |= (TTY_FREEZE|TTY_NOCURSOR);
	FUNC5(c);
}