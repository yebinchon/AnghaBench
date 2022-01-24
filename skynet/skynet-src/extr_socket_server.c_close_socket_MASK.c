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
struct socket_message {int id; int /*<<< orphan*/  opaque; int /*<<< orphan*/ * data; scalar_t__ ud; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ type; int id; } ;
struct request_close {int id; int /*<<< orphan*/  opaque; scalar_t__ shutdown; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int SOCKET_CLOSE ; 
 scalar_t__ SOCKET_TYPE_HALFCLOSE ; 
 scalar_t__ SOCKET_TYPE_INVALID ; 
 int SOCKET_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int FUNC3 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct socket_lock*) ; 

__attribute__((used)) static int
FUNC5(struct socket_server *ss, struct request_close *request, struct socket_message *result) {
	int id = request->id;
	struct socket * s = &ss->slot[FUNC0(id)];
	if (s->type == SOCKET_TYPE_INVALID || s->id != id) {
		result->id = id;
		result->opaque = request->opaque;
		result->ud = 0;
		result->data = NULL;
		return SOCKET_CLOSE;
	}
	struct socket_lock l;
	FUNC4(s, &l);
	if (!FUNC2(s)) {
		int type = FUNC3(ss,s,&l,result);
		// type : -1 or SOCKET_WARNING or SOCKET_CLOSE, SOCKET_WARNING means nomore_sending_data
		if (type != -1 && type != SOCKET_WARNING)
			return type;
	}
	if (request->shutdown || FUNC2(s)) {
		FUNC1(ss,s,&l,result);
		result->id = id;
		result->opaque = request->opaque;
		return SOCKET_CLOSE;
	}
	s->type = SOCKET_TYPE_HALFCLOSE;

	return -1;
}