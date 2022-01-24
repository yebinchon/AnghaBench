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
struct socket_server {int checkctrl; scalar_t__ event_index; scalar_t__ event_n; struct event* ev; int /*<<< orphan*/  event_fd; } ;
struct socket_message {char* data; } ;
struct socket_lock {int dummy; } ;
struct socket {int type; int /*<<< orphan*/  fd; int /*<<< orphan*/  protocol; } ;
struct event {int read; int /*<<< orphan*/  eof; int /*<<< orphan*/  error; int /*<<< orphan*/  write; struct socket* s; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  MAX_EVENT ; 
 int /*<<< orphan*/  PROTOCOL_TCP ; 
 int SOCKET_ACCEPT ; 
 int SOCKET_CLOSE ; 
 int SOCKET_ERR ; 
#define  SOCKET_TYPE_CONNECTING 130 
#define  SOCKET_TYPE_INVALID 129 
#define  SOCKET_TYPE_LISTEN 128 
 int SOCKET_UDP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct socket_server*,struct socket_message*,int) ; 
 int FUNC1 (struct socket_server*,struct socket_message*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int FUNC3 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int FUNC4 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC7 (struct socket_server*) ; 
 int FUNC8 (struct socket_server*,struct socket*,struct socket_message*) ; 
 int FUNC9 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int FUNC10 (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,struct socket_lock*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (int) ; 

int 
FUNC14(struct socket_server *ss, struct socket_message * result, int * more) {
	for (;;) {
		if (ss->checkctrl) {
			if (FUNC7(ss)) {
				int type = FUNC1(ss, result);
				if (type != -1) {
					FUNC0(ss, result, type);
					return type;
				} else
					continue;
			} else {
				ss->checkctrl = 0;
			}
		}
		if (ss->event_index == ss->event_n) {
			ss->event_n = FUNC12(ss->event_fd, ss->ev, MAX_EVENT);
			ss->checkctrl = 1;
			if (more) {
				*more = 0;
			}
			ss->event_index = 0;
			if (ss->event_n <= 0) {
				ss->event_n = 0;
				if (errno == EINTR) {
					continue;
				}
				return -1;
			}
		}
		struct event *e = &ss->ev[ss->event_index++];
		struct socket *s = e->s;
		if (s == NULL) {
			// dispatch pipe message at beginning
			continue;
		}
		struct socket_lock l;
		FUNC11(s, &l);
		switch (s->type) {
		case SOCKET_TYPE_CONNECTING:
			return FUNC9(ss, s, &l, result);
		case SOCKET_TYPE_LISTEN: {
			int ok = FUNC8(ss, s, result);
			if (ok > 0) {
				return SOCKET_ACCEPT;
			} if (ok < 0 ) {
				return SOCKET_ERR;
			}
			// when ok == 0, retry
			break;
		}
		case SOCKET_TYPE_INVALID:
			FUNC5(stderr, "socket-server: invalid socket\n");
			break;
		default:
			if (e->read) {
				int type;
				if (s->protocol == PROTOCOL_TCP) {
					type = FUNC3(ss, s, &l, result);
				} else {
					type = FUNC4(ss, s, &l, result);
					if (type == SOCKET_UDP) {
						// try read again
						--ss->event_index;
						return SOCKET_UDP;
					}
				}
				if (e->write && type != SOCKET_CLOSE && type != SOCKET_ERR) {
					// Try to dispatch write message next step if write flag set.
					e->read = false;
					--ss->event_index;
				}
				if (type == -1)
					break;				
				return type;
			}
			if (e->write) {
				int type = FUNC10(ss, s, &l, result);
				if (type == -1)
					break;
				return type;
			}
			if (e->error) {
				// close when error
				int error;
				socklen_t len = sizeof(error);  
				int code = FUNC6(s->fd, SOL_SOCKET, SO_ERROR, &error, &len);  
				const char * err = NULL;
				if (code < 0) {
					err = FUNC13(errno);
				} else if (error != 0) {
					err = FUNC13(error);
				} else {
					err = "Unknown error";
				}
				FUNC2(ss, s, &l, result);
				result->data = (char *)err;
				return SOCKET_ERR;
			}
			if(e->eof) {
				FUNC2(ss, s, &l, result);
				return SOCKET_CLOSE;
			}
			break;
		}
	}
}