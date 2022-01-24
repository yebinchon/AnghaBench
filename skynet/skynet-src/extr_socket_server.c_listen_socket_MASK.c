#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket_server {TYPE_1__* slot; } ;
struct socket_message {int id; char* data; scalar_t__ ud; int /*<<< orphan*/  opaque; } ;
struct socket {int /*<<< orphan*/  type; } ;
struct request_listen {int id; int fd; int /*<<< orphan*/  opaque; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  PROTOCOL_TCP ; 
 int SOCKET_ERR ; 
 int /*<<< orphan*/  SOCKET_TYPE_INVALID ; 
 int /*<<< orphan*/  SOCKET_TYPE_PLISTEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct socket* FUNC2 (struct socket_server*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct socket_server *ss, struct request_listen * request, struct socket_message *result) {
	int id = request->id;
	int listen_fd = request->fd;
	struct socket *s = FUNC2(ss, id, listen_fd, PROTOCOL_TCP, request->opaque, false);
	if (s == NULL) {
		goto _failed;
	}
	s->type = SOCKET_TYPE_PLISTEN;
	return -1;
_failed:
	FUNC1(listen_fd);
	result->opaque = request->opaque;
	result->id = id;
	result->ud = 0;
	result->data = "reach skynet socket number limit";
	ss->slot[FUNC0(id)].type = SOCKET_TYPE_INVALID;

	return SOCKET_ERR;
}