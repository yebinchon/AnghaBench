#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket_server {int /*<<< orphan*/  event_fd; } ;
struct socket_message {int /*<<< orphan*/ * data; scalar_t__ ud; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; } ;
struct socket_lock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * head; } ;
struct socket {scalar_t__ wb_size; scalar_t__ type; scalar_t__ warn_size; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; int /*<<< orphan*/  fd; TYPE_1__ low; TYPE_1__ high; } ;

/* Variables and functions */
 scalar_t__ SOCKET_CLOSE ; 
 scalar_t__ SOCKET_TYPE_HALFCLOSE ; 
 int SOCKET_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 scalar_t__ FUNC5 (struct socket_server*,struct socket*,TYPE_1__*,struct socket_lock*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*,int) ; 

__attribute__((used)) static int
FUNC7(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message *result) {
	FUNC0(!FUNC2(&s->low));
	// step 1
	if (FUNC5(ss,s,&s->high,l,result) == SOCKET_CLOSE) {
		return SOCKET_CLOSE;
	}
	if (s->high.head == NULL) {
		// step 2
		if (s->low.head != NULL) {
			if (FUNC5(ss,s,&s->low,l,result) == SOCKET_CLOSE) {
				return SOCKET_CLOSE;
			}
			// step 3
			if (FUNC2(&s->low)) {
				FUNC3(s);
				return -1;
			}
			if (s->low.head)
				return -1;
		} 
		// step 4
		FUNC0(FUNC4(s) && s->wb_size == 0);
		FUNC6(ss->event_fd, s->fd, s, false);			

		if (s->type == SOCKET_TYPE_HALFCLOSE) {
				FUNC1(ss, s, l, result);
				return SOCKET_CLOSE;
		}
		if(s->warn_size > 0){
				s->warn_size = 0;
				result->opaque = s->opaque;
				result->id = s->id;
				result->ud = 0;
				result->data = NULL;
				return SOCKET_WARNING;
		}
	}

	return -1;
}