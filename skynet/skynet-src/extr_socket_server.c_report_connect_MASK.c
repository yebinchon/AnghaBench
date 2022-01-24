#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_addr; } ;
union sockaddr_all {TYPE_3__ s; TYPE_2__ v6; TYPE_1__ v4; } ;
typedef  int /*<<< orphan*/  u ;
struct socket_server {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  event_fd; } ;
struct socket_message {int /*<<< orphan*/ * data; scalar_t__ ud; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; } ;
struct socket_lock {int dummy; } ;
struct socket {int /*<<< orphan*/  fd; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; int /*<<< orphan*/  type; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int SOCKET_ERR ; 
 int SOCKET_OPEN ; 
 int /*<<< orphan*/  SOCKET_TYPE_CONNECTED ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC3 (scalar_t__,void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*,int) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message *result) {
	int error;
	socklen_t len = sizeof(error);  
	int code = FUNC2(s->fd, SOL_SOCKET, SO_ERROR, &error, &len);  
	if (code < 0 || error) {  
		FUNC0(ss,s,l, result);
		if (code >= 0)
			result->data = FUNC6(error);
		else
			result->data = FUNC6(errno);
		return SOCKET_ERR;
	} else {
		s->type = SOCKET_TYPE_CONNECTED;
		result->opaque = s->opaque;
		result->id = s->id;
		result->ud = 0;
		if (FUNC4(s)) {
			FUNC5(ss->event_fd, s->fd, s, false);
		}
		union sockaddr_all u;
		socklen_t slen = sizeof(u);
		if (FUNC1(s->fd, &u.s, &slen) == 0) {
			void * sin_addr = (u.s.sa_family == AF_INET) ? (void*)&u.v4.sin_addr : (void *)&u.v6.sin6_addr;
			if (FUNC3(u.s.sa_family, sin_addr, ss->buffer, sizeof(ss->buffer))) {
				result->data = ss->buffer;
				return SOCKET_OPEN;
			}
		}
		result->data = NULL;
		return SOCKET_OPEN;
	}
}