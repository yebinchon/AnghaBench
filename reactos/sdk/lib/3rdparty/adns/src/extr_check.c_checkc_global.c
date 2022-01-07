
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_5__* adns_state ;
struct TYPE_11__ {int used; } ;
struct TYPE_12__ {scalar_t__ udpsocket; int nsortlist; scalar_t__ tcpserver; scalar_t__ nservers; int tcpstate; int tcpsocket; int nsearchlist; scalar_t__ searchlist; TYPE_4__ tcprecv; int tcprecv_skip; TYPE_3__* sortlist; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_10__ {TYPE_2__ mask; TYPE_1__ base; } ;


 int assert (int) ;
 int checkc_notcpbuf (TYPE_5__*) ;





__attribute__((used)) static void checkc_global(adns_state ads) {
  int i;

  assert(ads->udpsocket >= 0);

  for (i=0; i<ads->nsortlist; i++)
    assert(!(ads->sortlist[i].base.s_addr & ~ads->sortlist[i].mask.s_addr));

  assert(ads->tcpserver >= 0 && ads->tcpserver < ads->nservers);

  switch (ads->tcpstate) {
  case 130:
    assert(ads->tcpsocket >= 0);
    checkc_notcpbuf(ads);
    break;
  case 129:
  case 131:
    assert(ads->tcpsocket == -1);
    checkc_notcpbuf(ads);
    break;
  case 128:
    assert(ads->tcpsocket >= 0);
    assert(ads->tcprecv_skip <= ads->tcprecv.used);
    break;
  default:
    assert(!"ads->tcpstate value");
  }

  assert(ads->searchlist || !ads->nsearchlist);
}
