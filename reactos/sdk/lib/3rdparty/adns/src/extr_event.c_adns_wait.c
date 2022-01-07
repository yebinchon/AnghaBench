
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int fd_set ;
typedef TYPE_1__* adns_state ;
typedef int adns_query ;
typedef int adns_answer ;
struct TYPE_9__ {int iflags; } ;


 int ADNS_CAPTURE_ERRNO ;
 int ADNS_CLEAR_ERRNO ;
 int EAGAIN ;
 int EINTR ;
 int FD_ZERO (int *) ;
 int adns__consistency (TYPE_1__*,int ,int ) ;
 int adns__diag (TYPE_1__*,int,int ,char*,int ) ;
 int adns__internal_check (TYPE_1__*,int *,int **,void**) ;
 int adns_afterselect (TYPE_1__*,int,int *,int *,int *,int ) ;
 int adns_beforeselect (TYPE_1__*,int*,int *,int *,int *,struct timeval**,struct timeval*,int ) ;
 int adns_globalsystemfailure (TYPE_1__*) ;
 int adns_if_eintr ;
 int assert (int) ;
 int cc_entex ;
 int errno ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int strerror (int) ;

int adns_wait(adns_state ads,
       adns_query *query_io,
       adns_answer **answer_r,
       void **context_r) {
  int r, maxfd, rsel;
  fd_set readfds, writefds, exceptfds;
  struct timeval tvbuf, *tvp;

  adns__consistency(ads,*query_io,cc_entex);
  for (;;) {
    r= adns__internal_check(ads,query_io,answer_r,context_r);
    if (r != EAGAIN) break;
    maxfd= 0; tvp= 0;
    FD_ZERO(&readfds); FD_ZERO(&writefds); FD_ZERO(&exceptfds);
    adns_beforeselect(ads,&maxfd,&readfds,&writefds,&exceptfds,&tvp,&tvbuf,0);
    assert(tvp);
 ADNS_CLEAR_ERRNO;
    rsel= select(maxfd,&readfds,&writefds,&exceptfds,tvp);
 ADNS_CAPTURE_ERRNO;
    if (rsel==-1) {
      if (errno == EINTR) {
 if (ads->iflags & adns_if_eintr) { r= EINTR; break; }
      } else {
 adns__diag(ads,-1,0,"select failed in wait: %s",strerror(errno));
 adns_globalsystemfailure(ads);
      }
    } else {
      assert(rsel >= 0);
      adns_afterselect(ads,maxfd,&readfds,&writefds,&exceptfds,0);
    }
  }
  adns__consistency(ads,0,cc_entex);
  return r;
}
