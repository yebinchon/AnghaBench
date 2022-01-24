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
struct pollfd {int revents; int events; } ;
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 int MAX_POLLFDS ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pollfd*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pollfd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  cc_entex ; 
 int FUNC4 (struct timeval*,int /*<<< orphan*/ ) ; 

int FUNC5(adns_state ads) {
  int r, i;
  struct timeval now;
  struct pollfd pollfds[MAX_POLLFDS];
  int npollfds;

  FUNC0(ads,0,cc_entex);

  r= FUNC4(&now,0);
  if (!r) FUNC3(ads,&now);

  /* We just use adns__fdevents to loop over the fd's trying them.
   * This seems more sensible than calling select, since we're most
   * likely just to want to do a adns_socket_read on one or two fds anyway.
   */
  npollfds= FUNC2(ads,pollfds);
  for (i=0; i<npollfds; i++) pollfds[i].revents= pollfds[i].events & ~POLLPRI;
  FUNC1(ads,
		 pollfds,npollfds,
		 0,0,0,0,
		 now,&r);

  FUNC0(ads,0,cc_entex);
  return 0;
}