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
struct socket_server {int /*<<< orphan*/  event_fd; } ;
struct socket_sendbuffer {scalar_t__ sz; int /*<<< orphan*/  type; int /*<<< orphan*/  id; int /*<<< orphan*/ * buffer; } ;
struct socket_message {int /*<<< orphan*/  opaque; int /*<<< orphan*/ * data; scalar_t__ ud; int /*<<< orphan*/  id; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ type; scalar_t__ dw_size; int /*<<< orphan*/ * dw_buffer; int /*<<< orphan*/  id; int /*<<< orphan*/  fd; int /*<<< orphan*/  low; int /*<<< orphan*/  high; int /*<<< orphan*/  opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_BUFFER_MEMORY ; 
 int /*<<< orphan*/  SOCKET_BUFFER_OBJECT ; 
 scalar_t__ SOCKET_TYPE_BIND ; 
 scalar_t__ SOCKET_TYPE_INVALID ; 
 scalar_t__ SOCKET_TYPE_PACCEPT ; 
 scalar_t__ SOCKET_TYPE_PLISTEN ; 
 scalar_t__ SOCKET_TYPE_RESERVE ; 
 scalar_t__ USEROBJECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_server*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message *result) {
	result->id = s->id;
	result->ud = 0;
	result->data = NULL;
	result->opaque = s->opaque;
	if (s->type == SOCKET_TYPE_INVALID) {
		return;
	}
	FUNC0(s->type != SOCKET_TYPE_RESERVE);
	FUNC3(ss,&s->high);
	FUNC3(ss,&s->low);
	if (s->type != SOCKET_TYPE_PACCEPT && s->type != SOCKET_TYPE_PLISTEN) {
		FUNC7(ss->event_fd, s->fd);
	}
	FUNC5(l);
	if (s->type != SOCKET_TYPE_BIND) {
		if (FUNC1(s->fd) < 0) {
			FUNC4("close socket:");
		}
	}
	s->type = SOCKET_TYPE_INVALID;
	if (s->dw_buffer) {
		struct socket_sendbuffer tmp;
		tmp.buffer = s->dw_buffer;
		tmp.sz = s->dw_size;
		tmp.id = s->id;
		tmp.type = (tmp.sz == USEROBJECT) ? SOCKET_BUFFER_OBJECT : SOCKET_BUFFER_MEMORY;
		FUNC2(ss, &tmp);
		s->dw_buffer = NULL;
	}
	FUNC6(l);
}