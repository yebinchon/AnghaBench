
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vbuf ;
typedef int va_list ;
typedef TYPE_3__* adns_state ;
typedef TYPE_4__* adns_query ;
typedef int adns_initflags ;
struct TYPE_10__ {TYPE_1__* typei; int query_dglen; int query_dgram; int ads; } ;
struct TYPE_9__ {int iflags; int diagfile; TYPE_2__* servers; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {char* rrtname; char* fmtname; } ;


 int DNS_HDRSIZE ;
 char* adns__diag_domain (int ,int,int ,int *,int ,int ,int ) ;
 int adns__vbuf_free (int *) ;
 int adns__vbuf_init (int *) ;
 int adns_if_debug ;
 int adns_if_logpid ;
 int fprintf (int ,char*,char const*,...) ;
 int fputs (char const*,int ) ;
 scalar_t__ getpid () ;
 char* inet_ntoa (int ) ;
 int vfprintf (int ,char const*,int ) ;

void adns__vdiag(adns_state ads, const char *pfx, adns_initflags prevent,
   int serv, adns_query qu, const char *fmt, va_list al) {
  const char *bef, *aft;
  vbuf vb;

  if (!ads->diagfile ||
      (!(ads->iflags & adns_if_debug) && (!prevent || (ads->iflags & prevent))))
    return;

  if (ads->iflags & adns_if_logpid) {
    fprintf(ads->diagfile,"adns%s [%ld]: ",pfx,(long)getpid());
  } else {
    fprintf(ads->diagfile,"adns%s: ",pfx);
  }

  vfprintf(ads->diagfile,fmt,al);

  bef= " (";
  aft= "\n";

  if (qu && qu->query_dgram) {
    adns__vbuf_init(&vb);
    fprintf(ads->diagfile,"%sQNAME=%s, QTYPE=%s",
     bef,
     adns__diag_domain(qu->ads,-1,0, &vb,
         qu->query_dgram,qu->query_dglen,DNS_HDRSIZE),
     qu->typei ? qu->typei->rrtname : "<unknown>");
    if (qu->typei && qu->typei->fmtname)
      fprintf(ads->diagfile,"(%s)",qu->typei->fmtname);
    bef=", "; aft=")\n";
    adns__vbuf_free(&vb);
  }

  if (serv>=0) {
    fprintf(ads->diagfile,"%sNS=%s",bef,inet_ntoa(ads->servers[serv].addr));
    bef=", "; aft=")\n";
  }

  fputs(aft,ads->diagfile);
}
