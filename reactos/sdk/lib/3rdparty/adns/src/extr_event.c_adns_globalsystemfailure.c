
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* adns_state ;
struct TYPE_8__ {scalar_t__ head; } ;
struct TYPE_7__ {scalar_t__ head; } ;
struct TYPE_9__ {int tcpstate; TYPE_2__ tcpw; TYPE_1__ udpw; } ;


 int abort () ;
 int adns__consistency (TYPE_3__*,int ,int ) ;
 int adns__query_fail (scalar_t__,int ) ;
 int adns__tcp_broken (TYPE_3__*,int ,int ) ;
 int adns_s_systemfail ;
 int cc_entex ;





void adns_globalsystemfailure(adns_state ads) {
  adns__consistency(ads,0,cc_entex);

  while (ads->udpw.head) adns__query_fail(ads->udpw.head, adns_s_systemfail);
  while (ads->tcpw.head) adns__query_fail(ads->tcpw.head, adns_s_systemfail);

  switch (ads->tcpstate) {
  case 130:
  case 128:
    adns__tcp_broken(ads,0,0);
    break;
  case 129:
  case 131:
    break;
  default:
    abort();
  }
  adns__consistency(ads,0,cc_entex);
}
