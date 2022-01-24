#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  TYPE_1__* adns_state ;
typedef  int /*<<< orphan*/  adns_query ;
typedef  int /*<<< orphan*/  adns_answer ;
struct TYPE_9__ {int iflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADNS_CAPTURE_ERRNO ; 
 int /*<<< orphan*/  ADNS_CLEAR_ERRNO ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval**,struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int adns_if_eintr ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  cc_entex ; 
 int errno ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(adns_state ads,
	      adns_query *query_io,
	      adns_answer **answer_r,
	      void **context_r) {
  int r, maxfd, rsel;
  fd_set readfds, writefds, exceptfds;
  struct timeval tvbuf, *tvp;

  FUNC1(ads,*query_io,cc_entex);
  for (;;) {
    r= FUNC3(ads,query_io,answer_r,context_r);
    if (r != EAGAIN) break;
    maxfd= 0; tvp= 0;
    FUNC0(&readfds); FUNC0(&writefds); FUNC0(&exceptfds);
    FUNC5(ads,&maxfd,&readfds,&writefds,&exceptfds,&tvp,&tvbuf,0);
    FUNC7(tvp);
	ADNS_CLEAR_ERRNO;
    rsel= FUNC8(maxfd,&readfds,&writefds,&exceptfds,tvp);
	ADNS_CAPTURE_ERRNO;
    if (rsel==-1) {
      if (errno == EINTR) {
	if (ads->iflags & adns_if_eintr) { r= EINTR; break; }
      } else {
	FUNC2(ads,-1,0,"select failed in wait: %s",FUNC9(errno));
	FUNC6(ads);
      }
    } else {
      FUNC7(rsel >= 0);
      FUNC4(ads,maxfd,&readfds,&writefds,&exceptfds,0);
    }
  }
  FUNC1(ads,0,cc_entex);
  return r;
}