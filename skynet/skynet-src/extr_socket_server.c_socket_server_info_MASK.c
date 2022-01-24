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
struct socket_server {struct socket* slot; } ;
struct socket_info {int /*<<< orphan*/  next; } ;
struct socket {int id; } ;

/* Variables and functions */
 int MAX_SOCKET ; 
 scalar_t__ FUNC0 (struct socket*,struct socket_info*) ; 
 struct socket_info* FUNC1 (struct socket_info*) ; 

struct socket_info *
FUNC2(struct socket_server *ss) {
	int i;
	struct socket_info * si = NULL;
	for (i=0;i<MAX_SOCKET;i++) {
		struct socket * s = &ss->slot[i];
		int id = s->id;
		struct socket_info temp;
		if (FUNC0(s, &temp) && s->id == id) {
			// socket_server_info may call in different thread, so check socket id again
			si = FUNC1(si);
			temp.next = si->next;
			*si = temp;
		}
	}
	return si;
}