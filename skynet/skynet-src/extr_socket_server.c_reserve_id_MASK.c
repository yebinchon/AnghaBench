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
struct socket_server {struct socket* slot; int /*<<< orphan*/  alloc_id; } ;
struct socket {scalar_t__ type; int id; int fd; scalar_t__ udpconnecting; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int) ; 
 int MAX_SOCKET ; 
 int /*<<< orphan*/  PROTOCOL_UNKNOWN ; 
 scalar_t__ SOCKET_TYPE_INVALID ; 
 int /*<<< orphan*/  SOCKET_TYPE_RESERVE ; 

__attribute__((used)) static int
FUNC4(struct socket_server *ss) {
	int i;
	for (i=0;i<MAX_SOCKET;i++) {
		int id = FUNC2(&(ss->alloc_id));
		if (id < 0) {
			id = FUNC0(&(ss->alloc_id), 0x7fffffff);
		}
		struct socket *s = &ss->slot[FUNC3(id)];
		if (s->type == SOCKET_TYPE_INVALID) {
			if (FUNC1(&s->type, SOCKET_TYPE_INVALID, SOCKET_TYPE_RESERVE)) {
				s->id = id;
				s->protocol = PROTOCOL_UNKNOWN;
				// socket_server_udp_connect may inc s->udpconncting directly (from other thread, before new_fd), 
				// so reset it to 0 here rather than in new_fd.
				s->udpconnecting = 0;
				s->fd = -1;
				return id;
			} else {
				// retry
				--i;
			}
		}
	}
	return -1;
}