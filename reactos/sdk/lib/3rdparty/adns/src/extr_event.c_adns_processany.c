
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pollfd {int revents; int events; } ;
typedef int adns_state ;


 int MAX_POLLFDS ;
 int POLLPRI ;
 int adns__consistency (int ,int ,int ) ;
 int adns__fdevents (int ,struct pollfd*,int,int ,int ,int ,int ,struct timeval,int*) ;
 int adns__pollfds (int ,struct pollfd*) ;
 int adns_processtimeouts (int ,struct timeval*) ;
 int cc_entex ;
 int gettimeofday (struct timeval*,int ) ;

int adns_processany(adns_state ads) {
  int r, i;
  struct timeval now;
  struct pollfd pollfds[MAX_POLLFDS];
  int npollfds;

  adns__consistency(ads,0,cc_entex);

  r= gettimeofday(&now,0);
  if (!r) adns_processtimeouts(ads,&now);





  npollfds= adns__pollfds(ads,pollfds);
  for (i=0; i<npollfds; i++) pollfds[i].revents= pollfds[i].events & ~POLLPRI;
  adns__fdevents(ads,
   pollfds,npollfds,
   0,0,0,0,
   now,&r);

  adns__consistency(ads,0,cc_entex);
  return 0;
}
