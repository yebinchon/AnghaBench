
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef TYPE_1__* adns_state ;
struct TYPE_5__ {int tcpstate; int tcpsocket; } ;
typedef int ADNS_SOCKET ;


 int abort () ;
 int adns__consistency (TYPE_1__*,int ,int ) ;
 int adns__tcp_broken (TYPE_1__*,char*,char*) ;
 int cc_entex ;





int adns_processexceptional(adns_state ads, ADNS_SOCKET fd, const struct timeval *now) {
  adns__consistency(ads,0,cc_entex);
  switch (ads->tcpstate) {
  case 129:
  case 131:
    break;
  case 130:
  case 128:
    if (fd != ads->tcpsocket) break;
    adns__tcp_broken(ads,"poll/select","exceptional condition detected");
    break;
  default:
    abort();
  }
  adns__consistency(ads,0,cc_entex);
  return 0;
}
