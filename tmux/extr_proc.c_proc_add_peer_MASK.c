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
struct tmuxproc {int dummy; } ;
struct tmuxpeer {void (* dispatchcb ) (struct imsg*,void*) ;int /*<<< orphan*/  event; int /*<<< orphan*/  ibuf; void* arg; struct tmuxproc* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmuxpeer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct tmuxpeer*,int,void*) ; 
 int /*<<< orphan*/  proc_event_cb ; 
 int /*<<< orphan*/  FUNC3 (struct tmuxpeer*) ; 
 struct tmuxpeer* FUNC4 (int,int) ; 

struct tmuxpeer *
FUNC5(struct tmuxproc *tp, int fd,
    void (*dispatchcb)(struct imsg *, void *), void *arg)
{
	struct tmuxpeer	*peer;

	peer = FUNC4(1, sizeof *peer);
	peer->parent = tp;

	peer->dispatchcb = dispatchcb;
	peer->arg = arg;

	FUNC1(&peer->ibuf, fd);
	FUNC0(&peer->event, fd, EV_READ, proc_event_cb, peer);

	FUNC2("add peer %p: %d (%p)", peer, fd, arg);

	FUNC3(peer);
	return (peer);
}