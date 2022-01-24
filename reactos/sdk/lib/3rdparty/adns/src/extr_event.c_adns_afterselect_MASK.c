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
struct timeval {int dummy; } ;
struct pollfd {int revents; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 int MAX_POLLFDS ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pollfd*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct timeval const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct timeval const**,struct timeval*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct pollfd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timeval const*) ; 
 int /*<<< orphan*/  cc_entex ; 

void FUNC5(adns_state ads, int maxfd, const fd_set *readfds,
		      const fd_set *writefds, const fd_set *exceptfds,
		      const struct timeval *now) {
  struct timeval tv_buf;
  struct pollfd pollfds[MAX_POLLFDS];
  int npollfds, i;

  FUNC0(ads,0,cc_entex);
  FUNC2(ads,&now,&tv_buf);
  if (!now) goto xit;
  FUNC4(ads,now);

  npollfds= FUNC3(ads,pollfds);
  for (i=0; i<npollfds; i++) pollfds[i].revents= POLLIN|POLLOUT|POLLPRI;
  FUNC1(ads,
		 pollfds,npollfds,
		 maxfd,readfds,writefds,exceptfds,
		 *now, 0);
xit:
  FUNC0(ads,0,cc_entex);
}