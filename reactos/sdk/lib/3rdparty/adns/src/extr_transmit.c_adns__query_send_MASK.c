#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  servaddr ;
typedef  TYPE_2__* adns_state ;
typedef  TYPE_3__* adns_query ;
struct TYPE_11__ {scalar_t__ state; int flags; scalar_t__ retries; int udpnextserver; int udpsent; struct timeval timeout; int /*<<< orphan*/  query_dglen; scalar_t__ query_dgram; TYPE_2__* ads; } ;
struct TYPE_10__ {int nservers; int /*<<< orphan*/  udpw; int /*<<< orphan*/  udpsocket; TYPE_1__* servers; } ;
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADNS_CAPTURE_ERRNO ; 
 int /*<<< orphan*/  ADNS_CLEAR_ERRNO ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  DNS_MAXUDP ; 
 int /*<<< orphan*/  DNS_PORT ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EMSGSIZE ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ UDPMAXRETRIES ; 
 int /*<<< orphan*/  UDPRETRYMS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int adns_qf_usevc ; 
 int /*<<< orphan*/  adns_s_timeout ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ query_tosend ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct timeval) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int /*<<< orphan*/ ) ; 

void FUNC10(adns_query qu, struct timeval now) {
  struct sockaddr_in servaddr;
  int serv, r;
  adns_state ads;

  FUNC3(qu->state == query_tosend);
  if ((qu->flags & adns_qf_usevc) || (qu->query_dglen > DNS_MAXUDP)) {
    FUNC6(qu,now);
    return;
  }

  if (qu->retries >= UDPMAXRETRIES) {
    FUNC1(qu,adns_s_timeout);
    return;
  }

  serv= qu->udpnextserver;
  FUNC5(&servaddr,0,sizeof(servaddr));

  ads= qu->ads;
  servaddr.sin_family= AF_INET;
  servaddr.sin_addr= ads->servers[serv].addr;
  servaddr.sin_port= FUNC4(DNS_PORT);

  ADNS_CLEAR_ERRNO;
  r= FUNC7(ads->udpsocket,(char*)qu->query_dgram,qu->query_dglen,0,
	    (const struct sockaddr*)&servaddr,sizeof(servaddr));
  ADNS_CAPTURE_ERRNO;
  if (r<0 && errno == EMSGSIZE) { qu->retries= 0; FUNC6(qu,now); return; }
  if (r<0 && ((errno != EAGAIN) && (errno != EWOULDBLOCK))) FUNC2(ads,serv,0,"sendto failed: %s (%d)",FUNC8(errno), errno);

  qu->timeout= now;
  FUNC9(&qu->timeout,UDPRETRYMS);
  qu->udpsent |= (1<<serv);
  qu->udpnextserver= (serv+1)%ads->nservers;
  qu->retries++;
  FUNC0(ads->udpw,qu);
}