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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in_ev {int refcnt; int fd; scalar_t__ error; scalar_t__ in_buf_pos; struct bufferevent* bev; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
struct TYPE_2__ {int /*<<< orphan*/  ev_base; } ;

/* Variables and functions */
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  E_WARNING ; 
 TYPE_1__* TLS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_ev*) ; 
 struct bufferevent* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_incoming ; 
 struct in_ev* FUNC5 (int) ; 
 int /*<<< orphan*/  read_incoming ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7 (evutil_socket_t efd, short what, void *arg) {
  FUNC6 (E_WARNING, "Accepting incoming connection\n");
  socklen_t clilen = 0;
  struct sockaddr_in cli_addr;
  int fd = FUNC0 (efd, (struct sockaddr *)&cli_addr, &clilen);

  FUNC1 (fd >= 0);
  struct bufferevent *bev = FUNC4 (TLS->ev_base, fd, 0);
  struct in_ev *e = FUNC5 (sizeof (*e));
  e->bev = bev;
  e->refcnt = 1;
  e->in_buf_pos = 0;
  e->error = 0;
  e->fd = fd;
  FUNC3 (bev, read_incoming, 0, event_incoming, e);
  FUNC2 (bev, EV_READ | EV_WRITE);
}