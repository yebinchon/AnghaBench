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
struct imsgbuf {int dummy; } ;
struct tmuxpeer {int flags; struct imsgbuf ibuf; } ;
typedef  enum msgtype { ____Placeholder_msgtype } msgtype ;

/* Variables and functions */
 int PEER_BAD ; 
 int /*<<< orphan*/  PROTOCOL_VERSION ; 
 int FUNC0 (struct imsgbuf*,int,int /*<<< orphan*/ ,int,int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct tmuxpeer*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct tmuxpeer*) ; 

int
FUNC3(struct tmuxpeer *peer, enum msgtype type, int fd, const void *buf,
    size_t len)
{
	struct imsgbuf	*ibuf = &peer->ibuf;
	void		*vp = (void *)buf;
	int		 retval;

	if (peer->flags & PEER_BAD)
		return (-1);
	FUNC1("sending message %d to peer %p (%zu bytes)", type, peer, len);

	retval = FUNC0(ibuf, type, PROTOCOL_VERSION, -1, fd, vp, len);
	if (retval != 1)
		return (-1);
	FUNC2(peer);
	return (0);
}