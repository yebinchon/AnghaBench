
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* adns_state ;
typedef TYPE_3__* adns_query ;
struct TYPE_9__ {int retries; struct TYPE_9__* next; } ;
struct TYPE_7__ {TYPE_3__* head; } ;
struct TYPE_8__ {scalar_t__ tcpstate; int tcpserver; int nservers; TYPE_1__ tcpw; } ;


 int adns__warn (TYPE_2__*,int,int ,char*,char const*,char const*) ;
 int assert (int) ;
 scalar_t__ server_broken ;
 scalar_t__ server_connecting ;
 scalar_t__ server_ok ;
 int tcp_close (TYPE_2__*) ;

void adns__tcp_broken(adns_state ads, const char *what, const char *why) {
  int serv;
  adns_query qu;

  assert(ads->tcpstate == server_connecting || ads->tcpstate == server_ok);
  serv= ads->tcpserver;
  if (what) adns__warn(ads,serv,0,"TCP connection failed: %s: %s",what,why);

  if (ads->tcpstate == server_connecting) {

    for (qu= ads->tcpw.head; qu; qu= qu->next)
      qu->retries++;
  }

  tcp_close(ads);
  ads->tcpstate= server_broken;
  ads->tcpserver= (serv+1)%ads->nservers;
}
