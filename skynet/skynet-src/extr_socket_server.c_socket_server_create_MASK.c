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
typedef  int /*<<< orphan*/  uint64_t ;
struct socket_server {int recvctrl_fd; int sendctrl_fd; int checkctrl; int /*<<< orphan*/  rfds; int /*<<< orphan*/  soi; scalar_t__ event_index; scalar_t__ event_n; scalar_t__ alloc_id; struct socket* slot; int /*<<< orphan*/  event_fd; int /*<<< orphan*/  time; } ;
struct socket {int /*<<< orphan*/  dw_lock; int /*<<< orphan*/  low; int /*<<< orphan*/  high; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  poll_fd ;

/* Variables and functions */
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct socket_server* FUNC1 (int) ; 
 int MAX_SOCKET ; 
 int /*<<< orphan*/  SOCKET_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

struct socket_server * 
FUNC13(uint64_t time) {
	int i;
	int fd[2];
	poll_fd efd = FUNC9();
	if (FUNC10(efd)) {
		FUNC5(stderr, "socket-server: create event pool failed.\n");
		return NULL;
	}
	if (FUNC7(fd)) {
		FUNC11(efd);
		FUNC5(stderr, "socket-server: create socket pair failed.\n");
		return NULL;
	}
	if (FUNC8(efd, fd[0], NULL)) {
		// add recvctrl_fd to event poll
		FUNC5(stderr, "socket-server: can't add server fd to event pool.\n");
		FUNC4(fd[0]);
		FUNC4(fd[1]);
		FUNC11(efd);
		return NULL;
	}

	struct socket_server *ss = FUNC1(sizeof(*ss));
	ss->time = time;
	ss->event_fd = efd;
	ss->recvctrl_fd = fd[0];
	ss->sendctrl_fd = fd[1];
	ss->checkctrl = 1;

	for (i=0;i<MAX_SOCKET;i++) {
		struct socket *s = &ss->slot[i];
		s->type = SOCKET_TYPE_INVALID;
		FUNC3(&s->high);
		FUNC3(&s->low);
		FUNC12(&s->dw_lock);
	}
	ss->alloc_id = 0;
	ss->event_n = 0;
	ss->event_index = 0;
	FUNC6(&ss->soi, 0, sizeof(ss->soi));
	FUNC0(&ss->rfds);
	FUNC2(ss->recvctrl_fd < FD_SETSIZE);

	return ss;
}