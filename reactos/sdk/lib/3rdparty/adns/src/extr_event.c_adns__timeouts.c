
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef TYPE_1__* adns_state ;
struct TYPE_5__ {int tcpw; int udpw; } ;


 int tcp_events (TYPE_1__*,int,struct timeval**,struct timeval*,struct timeval) ;
 int timeouts_queue (TYPE_1__*,int,struct timeval**,struct timeval*,struct timeval,int *) ;

void adns__timeouts(adns_state ads, int act,
      struct timeval **tv_io, struct timeval *tvbuf,
      struct timeval now) {
  timeouts_queue(ads,act,tv_io,tvbuf,now, &ads->udpw);
  timeouts_queue(ads,act,tv_io,tvbuf,now, &ads->tcpw);
  tcp_events(ads,act,tv_io,tvbuf,now);
}
