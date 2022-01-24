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
union sockaddr_all {int /*<<< orphan*/  s; } ;
struct write_buffer {struct write_buffer* next; scalar_t__ sz; int /*<<< orphan*/  ptr; int /*<<< orphan*/  udp_address; } ;
struct wb_list {int /*<<< orphan*/ * tail; struct write_buffer* head; } ;
struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;
struct socket {int id; int /*<<< orphan*/  wb_size; int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ socklen_t ;

/* Variables and functions */
#define  AGAIN_WOULDBLOCK 129 
#define  EINTR 128 
 int /*<<< orphan*/  FUNC0 (struct socket_server*,struct socket*,struct wb_list*,struct write_buffer*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct socket_server*,struct socket*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct socket*,int /*<<< orphan*/ ,union sockaddr_all*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket_server*,struct write_buffer*) ; 

__attribute__((used)) static int
FUNC7(struct socket_server *ss, struct socket *s, struct wb_list *list, struct socket_message *result) {
	while (list->head) {
		struct write_buffer * tmp = list->head;
		union sockaddr_all sa;
		socklen_t sasz = FUNC5(s, tmp->udp_address, &sa);
		if (sasz == 0) {
			FUNC1(stderr, "socket-server : udp (%d) type mismatch.\n", s->id);
			FUNC0(ss, s, list, tmp);
			return -1;
		}
		int err = FUNC2(s->fd, tmp->ptr, tmp->sz, 0, &sa.s, sasz);
		if (err < 0) {
			switch(errno) {
			case EINTR:
			case AGAIN_WOULDBLOCK:
				return -1;
			}
			FUNC1(stderr, "socket-server : udp (%d) sendto error %s.\n",s->id, FUNC4(errno));
			FUNC0(ss, s, list, tmp);
			return -1;
		}
		FUNC3(ss,s,tmp->sz);
		s->wb_size -= tmp->sz;
		list->head = tmp->next;
		FUNC6(ss,tmp);
	}
	list->tail = NULL;

	return -1;
}