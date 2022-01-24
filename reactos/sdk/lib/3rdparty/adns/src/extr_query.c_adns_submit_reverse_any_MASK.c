#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int /*<<< orphan*/  shortbuf ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_rrtype ;
typedef  int /*<<< orphan*/  adns_queryflags ;
typedef  int /*<<< orphan*/  adns_query ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int ENOSYS ; 
 int /*<<< orphan*/  adns_qf_search ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned char const,unsigned char const,unsigned char const,unsigned char const,char const*) ; 
 int FUNC4 (char const*) ; 

int FUNC5(adns_state ads,
			    const struct sockaddr *addr,
			    const char *zone,
			    adns_rrtype type,
			    adns_queryflags flags,
			    void *context,
			    adns_query *query_r) {
  const unsigned char *iaddr;
  char *buf, *buf_free;
  char shortbuf[100];
  int r, lreq;

  flags &= ~adns_qf_search;

  if (addr->sa_family != AF_INET) return ENOSYS;
  iaddr= (const unsigned char*) &(((const struct sockaddr_in*)addr) -> sin_addr);

  lreq= FUNC4(zone) + 4*4 + 1;
  if (lreq > (int)sizeof(shortbuf)) {
    buf= FUNC2( FUNC4(zone) + 4*4 + 1 );
    if (!buf) return errno;
    buf_free= buf;
  } else {
    buf= shortbuf;
    buf_free= 0;
  }
  FUNC3(buf, "%d.%d.%d.%d.%s", iaddr[3], iaddr[2], iaddr[1], iaddr[0], zone);

  r= FUNC0(ads,buf,type,flags,context,query_r);
  FUNC1(buf_free);
  return r;
}