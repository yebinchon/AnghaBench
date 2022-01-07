
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pollfd {int fd; int revents; } ;
typedef int fd_set ;
typedef int adns_state ;
typedef int ADNS_SOCKET ;


 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int adns_processexceptional ;
 int adns_processreadable ;
 int adns_processwriteable ;
 int fd_event (int ,int,int,int ,int,int const*,int ,struct timeval,int*) ;

void adns__fdevents(adns_state ads,
      const struct pollfd *pollfds, int npollfds,
      int maxfd, const fd_set *readfds,
      const fd_set *writefds, const fd_set *exceptfds,
      struct timeval now, int *r_r) {
  int i, revents;
  ADNS_SOCKET fd;

  for (i=0; i<npollfds; i++) {
    fd= pollfds[i].fd;
    if ((int)fd >= maxfd) maxfd= fd+1;
    revents= pollfds[i].revents;
    fd_event(ads,fd, revents,POLLIN, maxfd,readfds, adns_processreadable,now,r_r);
    fd_event(ads,fd, revents,POLLOUT, maxfd,writefds, adns_processwriteable,now,r_r);
    fd_event(ads,fd, revents,POLLPRI, maxfd,exceptfds, adns_processexceptional,now,r_r);
  }
}
