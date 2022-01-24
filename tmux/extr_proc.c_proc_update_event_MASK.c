#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ queued; } ;
struct TYPE_4__ {int /*<<< orphan*/  fd; TYPE_1__ w; } ;
struct tmuxpeer {int /*<<< orphan*/  event; TYPE_2__ ibuf; } ;

/* Variables and functions */
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,short,int /*<<< orphan*/ ,struct tmuxpeer*) ; 
 int /*<<< orphan*/  proc_event_cb ; 

__attribute__((used)) static void
FUNC3(struct tmuxpeer *peer)
{
	short	events;

	FUNC1(&peer->event);

	events = EV_READ;
	if (peer->ibuf.w.queued > 0)
		events |= EV_WRITE;
	FUNC2(&peer->event, peer->ibuf.fd, events, proc_event_cb, peer);

	FUNC0(&peer->event, NULL);
}