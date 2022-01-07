
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef TYPE_1__* adns_query ;
struct TYPE_7__ {int tcpw; } ;
struct TYPE_6__ {TYPE_3__* ads; struct timeval timeout; int state; } ;


 int LIST_LINK_TAIL (int ,TYPE_1__*) ;
 int TCPWAITMS ;
 int adns__querysend_tcp (TYPE_1__*,struct timeval) ;
 int adns__tcp_tryconnect (TYPE_3__*,struct timeval) ;
 int query_tcpw ;
 int timevaladd (struct timeval*,int ) ;

__attribute__((used)) static void query_usetcp(adns_query qu, struct timeval now) {
  qu->state= query_tcpw;
  qu->timeout= now;
  timevaladd(&qu->timeout,TCPWAITMS);
  LIST_LINK_TAIL(qu->ads->tcpw,qu);
  adns__querysend_tcp(qu,now);
  adns__tcp_tryconnect(qu->ads,now);
}
