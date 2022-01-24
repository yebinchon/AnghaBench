#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  adns_query ;
typedef  int /*<<< orphan*/  adns_answer ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct TYPE_3__ {int /*<<< orphan*/  qu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADNS_CAPTURE_ERRNO ; 
 int /*<<< orphan*/  ADNS_CLEAR_ERRNO ; 
 int EAGAIN ; 
 scalar_t__ EINTR ; 
 int ESRCH ; 
 int EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval**,struct timeval*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void**) ; 
 int /*<<< orphan*/  ads ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__ outstanding ; 
 scalar_t__ ov_asynch ; 
 scalar_t__ ov_pipe ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const* const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcode ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(int argc, const char *const *argv) {
  struct timeval *tv, tvbuf;
  adns_query qu;
  void *qun_v;
  adns_answer *answer;
  int r, maxfd;
  fd_set readfds, writefds, exceptfds;
  const char *arg;

  FUNC7();

  while ((arg= *++argv)) FUNC10(arg,&argv,0);

  if (!ov_pipe && !ads) FUNC16("no domains given, and -f/--pipe not used; try --help");

  for (;;) {
    for (;;) {
      qu= ov_asynch ? 0 : outstanding.head ? outstanding.head->qu : 0;
      r= FUNC5(ads,&qu,&answer,&qun_v);
      if ((r == EAGAIN) || (r == EWOULDBLOCK)) break;
      if (r == ESRCH) { if (!ov_pipe) goto x_quit; else break; }
      FUNC6(!r);
      FUNC11(qun_v,answer);
    }
    maxfd= 0;
    FUNC2(&readfds);
    FUNC2(&writefds);
    FUNC2(&exceptfds);
    if (ov_pipe) {
      maxfd= 1;
      FUNC1(0,&readfds);
    }
    tv= 0;
    FUNC4(ads, &maxfd, &readfds,&writefds,&exceptfds, &tv,&tvbuf,0);
	ADNS_CLEAR_ERRNO;
    r= FUNC14(maxfd, &readfds,&writefds,&exceptfds, tv);
	ADNS_CAPTURE_ERRNO;
    if (r == -1) {
      if (errno == EINTR) continue;
      FUNC15("select",errno);
    }
    FUNC3(ads, maxfd, &readfds,&writefds,&exceptfds, 0);
    if (ov_pipe && FUNC0(0,&readfds)) FUNC13();
  }
x_quit:
  if (FUNC8(stdout)) FUNC9();
  FUNC12(rcode);
}