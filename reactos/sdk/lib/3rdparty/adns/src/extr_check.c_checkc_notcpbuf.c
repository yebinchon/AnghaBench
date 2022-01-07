
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* adns_state ;
struct TYPE_6__ {int used; } ;
struct TYPE_5__ {int used; } ;
struct TYPE_7__ {int tcprecv_skip; TYPE_2__ tcprecv; TYPE_1__ tcpsend; } ;


 int assert (int) ;

__attribute__((used)) static void checkc_notcpbuf(adns_state ads) {
  assert(!ads->tcpsend.used);
  assert(!ads->tcprecv.used);
  assert(!ads->tcprecv_skip);
}
