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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct pollfd {int fd; int events; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int ADNS_SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int MAX_POLLFDS ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct timeval const**,struct timeval*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct pollfd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval**,struct timeval*,struct timeval const) ; 
 int /*<<< orphan*/  cc_entex ; 
 int /*<<< orphan*/  FUNC5 (struct timeval**,struct timeval*) ; 

void FUNC6(adns_state ads, int *maxfd_io, fd_set *readfds_io,
		       fd_set *writefds_io, fd_set *exceptfds_io,
		       struct timeval **tv_mod, struct timeval *tv_tobuf,
		       const struct timeval *now) {
  struct timeval tv_nowbuf;
  struct pollfd pollfds[MAX_POLLFDS];
  int i, maxfd, npollfds;
  ADNS_SOCKET fd;

  FUNC1(ads,0,cc_entex);

  if (tv_mod && (!*tv_mod || (*tv_mod)->tv_sec || (*tv_mod)->tv_usec)) {
    /* The caller is planning to sleep. */
    FUNC2(ads,&now,&tv_nowbuf);
    if (!now) { FUNC5(tv_mod,tv_tobuf); goto xit; }
    FUNC4(ads, 0, tv_mod,tv_tobuf, *now);
  }

  npollfds= FUNC3(ads,pollfds);
  maxfd= *maxfd_io;
  for (i=0; i<npollfds; i++) {
    fd= pollfds[i].fd;
    if ((int)fd >= maxfd) maxfd= fd+1;
    if (pollfds[i].events & POLLIN) FUNC0(fd,readfds_io);
    if (pollfds[i].events & POLLOUT) FUNC0(fd,writefds_io);
    if (pollfds[i].events & POLLPRI) FUNC0(fd,exceptfds_io);
  }
  *maxfd_io= maxfd;

xit:
  FUNC1(ads,0,cc_entex);
}