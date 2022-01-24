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
struct socket_server {int dummy; } ;
struct socket_message {char* data; int ud; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; } ;
struct socket_lock {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct socket {scalar_t__ type; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; TYPE_1__ p; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
#define  AGAIN_WOULDBLOCK 129 
#define  EINTR 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int MIN_READ_BUFFER ; 
 int SOCKET_CLOSE ; 
 int SOCKET_DATA ; 
 int SOCKET_ERR ; 
 scalar_t__ SOCKET_TYPE_HALFCLOSE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_server*,struct socket*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message * result) {
	int sz = s->p.size;
	char * buffer = FUNC1(sz);
	int n = (int)FUNC4(s->fd, buffer, sz);
	if (n<0) {
		FUNC0(buffer);
		switch(errno) {
		case EINTR:
			break;
		case AGAIN_WOULDBLOCK:
			FUNC3(stderr, "socket-server: EAGAIN capture.\n");
			break;
		default:
			// close when error
			FUNC2(ss, s, l, result);
			result->data = FUNC6(errno);
			return SOCKET_ERR;
		}
		return -1;
	}
	if (n==0) {
		FUNC0(buffer);
		FUNC2(ss, s, l, result);
		return SOCKET_CLOSE;
	}

	if (s->type == SOCKET_TYPE_HALFCLOSE) {
		// discard recv data
		FUNC0(buffer);
		return -1;
	}

	FUNC5(ss,s,n);

	if (n == sz) {
		s->p.size *= 2;
	} else if (sz > MIN_READ_BUFFER && n*2 < sz) {
		s->p.size /= 2;
	}

	result->opaque = s->opaque;
	result->id = s->id;
	result->ud = n;
	result->data = buffer;
	return SOCKET_DATA;
}