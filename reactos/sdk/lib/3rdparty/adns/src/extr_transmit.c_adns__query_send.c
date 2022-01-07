
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int servaddr ;
typedef TYPE_2__* adns_state ;
typedef TYPE_3__* adns_query ;
struct TYPE_11__ {scalar_t__ state; int flags; scalar_t__ retries; int udpnextserver; int udpsent; struct timeval timeout; int query_dglen; scalar_t__ query_dgram; TYPE_2__* ads; } ;
struct TYPE_10__ {int nservers; int udpw; int udpsocket; TYPE_1__* servers; } ;
struct TYPE_9__ {int addr; } ;


 int ADNS_CAPTURE_ERRNO ;
 int ADNS_CLEAR_ERRNO ;
 int AF_INET ;
 int DNS_MAXUDP ;
 int DNS_PORT ;
 scalar_t__ EAGAIN ;
 scalar_t__ EMSGSIZE ;
 scalar_t__ EWOULDBLOCK ;
 int LIST_LINK_TAIL (int ,TYPE_3__*) ;
 scalar_t__ UDPMAXRETRIES ;
 int UDPRETRYMS ;
 int adns__query_fail (TYPE_3__*,int ) ;
 int adns__warn (TYPE_2__*,int,int ,char*,int ,scalar_t__) ;
 int adns_qf_usevc ;
 int adns_s_timeout ;
 int assert (int) ;
 scalar_t__ errno ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ query_tosend ;
 int query_usetcp (TYPE_3__*,struct timeval) ;
 int sendto (int ,char*,int ,int ,struct sockaddr const*,int) ;
 int strerror (scalar_t__) ;
 int timevaladd (struct timeval*,int ) ;

void adns__query_send(adns_query qu, struct timeval now) {
  struct sockaddr_in servaddr;
  int serv, r;
  adns_state ads;

  assert(qu->state == query_tosend);
  if ((qu->flags & adns_qf_usevc) || (qu->query_dglen > DNS_MAXUDP)) {
    query_usetcp(qu,now);
    return;
  }

  if (qu->retries >= UDPMAXRETRIES) {
    adns__query_fail(qu,adns_s_timeout);
    return;
  }

  serv= qu->udpnextserver;
  memset(&servaddr,0,sizeof(servaddr));

  ads= qu->ads;
  servaddr.sin_family= AF_INET;
  servaddr.sin_addr= ads->servers[serv].addr;
  servaddr.sin_port= htons(DNS_PORT);

  ADNS_CLEAR_ERRNO;
  r= sendto(ads->udpsocket,(char*)qu->query_dgram,qu->query_dglen,0,
     (const struct sockaddr*)&servaddr,sizeof(servaddr));
  ADNS_CAPTURE_ERRNO;
  if (r<0 && errno == EMSGSIZE) { qu->retries= 0; query_usetcp(qu,now); return; }
  if (r<0 && ((errno != EAGAIN) && (errno != EWOULDBLOCK))) adns__warn(ads,serv,0,"sendto failed: %s (%d)",strerror(errno), errno);

  qu->timeout= now;
  timevaladd(&qu->timeout,UDPRETRYMS);
  qu->udpsent |= (1<<serv);
  qu->udpnextserver= (serv+1)%ads->nservers;
  qu->retries++;
  LIST_LINK_TAIL(ads->udpw,qu);
}
