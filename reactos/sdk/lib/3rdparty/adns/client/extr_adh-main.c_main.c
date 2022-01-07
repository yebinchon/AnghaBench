
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int fd_set ;
typedef int adns_query ;
typedef int adns_answer ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct TYPE_3__ {int qu; } ;


 int ADNS_CAPTURE_ERRNO ;
 int ADNS_CLEAR_ERRNO ;
 int EAGAIN ;
 scalar_t__ EINTR ;
 int ESRCH ;
 int EWOULDBLOCK ;
 scalar_t__ FD_ISSET (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int adns_afterselect (int ,int,int *,int *,int *,int ) ;
 int adns_beforeselect (int ,int*,int *,int *,int *,struct timeval**,struct timeval*,int ) ;
 int adns_check (int ,int *,int **,void**) ;
 int ads ;
 int assert (int) ;
 int ensure_adns_init () ;
 scalar_t__ errno ;
 scalar_t__ fclose (int ) ;
 int outerr () ;
 TYPE_2__ outstanding ;
 scalar_t__ ov_asynch ;
 scalar_t__ ov_pipe ;
 int process_optarg (char const*,char const* const**,int ) ;
 int query_done (void*,int *) ;
 int quitnow (int ) ;
 int rcode ;
 int read_stdin () ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stdout ;
 int sysfail (char*,scalar_t__) ;
 int usageerr (char*) ;

int main(int argc, const char *const *argv) {
  struct timeval *tv, tvbuf;
  adns_query qu;
  void *qun_v;
  adns_answer *answer;
  int r, maxfd;
  fd_set readfds, writefds, exceptfds;
  const char *arg;

  ensure_adns_init();

  while ((arg= *++argv)) process_optarg(arg,&argv,0);

  if (!ov_pipe && !ads) usageerr("no domains given, and -f/--pipe not used; try --help");

  for (;;) {
    for (;;) {
      qu= ov_asynch ? 0 : outstanding.head ? outstanding.head->qu : 0;
      r= adns_check(ads,&qu,&answer,&qun_v);
      if ((r == EAGAIN) || (r == EWOULDBLOCK)) break;
      if (r == ESRCH) { if (!ov_pipe) goto x_quit; else break; }
      assert(!r);
      query_done(qun_v,answer);
    }
    maxfd= 0;
    FD_ZERO(&readfds);
    FD_ZERO(&writefds);
    FD_ZERO(&exceptfds);
    if (ov_pipe) {
      maxfd= 1;
      FD_SET(0,&readfds);
    }
    tv= 0;
    adns_beforeselect(ads, &maxfd, &readfds,&writefds,&exceptfds, &tv,&tvbuf,0);
 ADNS_CLEAR_ERRNO;
    r= select(maxfd, &readfds,&writefds,&exceptfds, tv);
 ADNS_CAPTURE_ERRNO;
    if (r == -1) {
      if (errno == EINTR) continue;
      sysfail("select",errno);
    }
    adns_afterselect(ads, maxfd, &readfds,&writefds,&exceptfds, 0);
    if (ov_pipe && FD_ISSET(0,&readfds)) read_stdin();
  }
x_quit:
  if (fclose(stdout)) outerr();
  quitnow(rcode);
}
