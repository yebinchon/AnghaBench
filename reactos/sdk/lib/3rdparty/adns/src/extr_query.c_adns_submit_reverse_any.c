
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int shortbuf ;
typedef int adns_state ;
typedef int adns_rrtype ;
typedef int adns_queryflags ;
typedef int adns_query ;


 scalar_t__ AF_INET ;
 int ENOSYS ;
 int adns_qf_search ;
 int adns_submit (int ,char*,int ,int ,void*,int *) ;
 int errno ;
 int free (char*) ;
 char* malloc (int) ;
 int sprintf (char*,char*,unsigned char const,unsigned char const,unsigned char const,unsigned char const,char const*) ;
 int strlen (char const*) ;

int adns_submit_reverse_any(adns_state ads,
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

  lreq= strlen(zone) + 4*4 + 1;
  if (lreq > (int)sizeof(shortbuf)) {
    buf= malloc( strlen(zone) + 4*4 + 1 );
    if (!buf) return errno;
    buf_free= buf;
  } else {
    buf= shortbuf;
    buf_free= 0;
  }
  sprintf(buf, "%d.%d.%d.%d.%s", iaddr[3], iaddr[2], iaddr[1], iaddr[0], zone);

  r= adns_submit(ads,buf,type,flags,context,query_r);
  free(buf_free);
  return r;
}
