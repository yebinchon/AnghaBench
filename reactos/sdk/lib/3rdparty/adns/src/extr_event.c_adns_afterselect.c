
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pollfd {int revents; } ;
typedef int fd_set ;
typedef int adns_state ;


 int MAX_POLLFDS ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int adns__consistency (int ,int ,int ) ;
 int adns__fdevents (int ,struct pollfd*,int,int,int const*,int const*,int const*,struct timeval const,int ) ;
 int adns__must_gettimeofday (int ,struct timeval const**,struct timeval*) ;
 int adns__pollfds (int ,struct pollfd*) ;
 int adns_processtimeouts (int ,struct timeval const*) ;
 int cc_entex ;

void adns_afterselect(adns_state ads, int maxfd, const fd_set *readfds,
        const fd_set *writefds, const fd_set *exceptfds,
        const struct timeval *now) {
  struct timeval tv_buf;
  struct pollfd pollfds[MAX_POLLFDS];
  int npollfds, i;

  adns__consistency(ads,0,cc_entex);
  adns__must_gettimeofday(ads,&now,&tv_buf);
  if (!now) goto xit;
  adns_processtimeouts(ads,now);

  npollfds= adns__pollfds(ads,pollfds);
  for (i=0; i<npollfds; i++) pollfds[i].revents= POLLIN|POLLOUT|POLLPRI;
  adns__fdevents(ads,
   pollfds,npollfds,
   maxfd,readfds,writefds,exceptfds,
   *now, 0);
xit:
  adns__consistency(ads,0,cc_entex);
}
