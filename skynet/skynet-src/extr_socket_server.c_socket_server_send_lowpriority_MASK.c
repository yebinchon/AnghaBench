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
struct socket_server {struct socket* slot; } ;
struct socket_sendbuffer {int id; } ;
struct socket {int id; scalar_t__ type; } ;
struct TYPE_3__ {int id; int /*<<< orphan*/  sz; int /*<<< orphan*/  buffer; } ;
struct TYPE_4__ {TYPE_1__ send; } ;
struct request_package {TYPE_2__ u; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ SOCKET_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct socket_sendbuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_server*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct socket_server*,struct request_package*,char,int) ; 

int 
FUNC5(struct socket_server *ss, struct socket_sendbuffer *buf) {
	int id = buf->id;

	struct socket * s = &ss->slot[FUNC0(id)];
	if (s->id != id || s->type == SOCKET_TYPE_INVALID) {
		FUNC2(ss, buf);
		return -1;
	}

	FUNC3(s, id);

	struct request_package request;
	request.u.send.id = id;
	request.u.send.buffer = FUNC1(buf, &request.u.send.sz);

	FUNC4(ss, &request, 'P', sizeof(request.u.send));
	return 0;
}