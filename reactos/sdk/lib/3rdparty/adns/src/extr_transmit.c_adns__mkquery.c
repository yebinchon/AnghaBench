
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbuf ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ typeinfo ;
typedef int label ;
typedef int byte ;
typedef scalar_t__ adns_status ;
typedef int adns_state ;
typedef int adns_queryflags ;


 int DNS_MAXDOMAIN ;
 int DNS_MAXLABEL ;
 int MKQUERY_ADDB (int) ;
 int MKQUERY_START (int *) ;
 int MKQUERY_STOP (int *) ;
 int adns_qf_quoteok_query ;
 scalar_t__ adns_s_ok ;
 scalar_t__ adns_s_querydomaininvalid ;
 scalar_t__ adns_s_querydomaintoolong ;
 int ctype_alpha (int) ;
 scalar_t__ ctype_digit (char const) ;
 int memcpy (int*,int*,size_t) ;
 scalar_t__ mkquery_footer (int *,int ) ;
 scalar_t__ mkquery_header (int ,int *,int*,int) ;

adns_status adns__mkquery(adns_state ads, vbuf *vb, int *id_r,
     const char *owner, int ol,
     const typeinfo *typei, adns_queryflags flags) {
  int ll, c, nbytes;
  byte label[255], *rqp;
  const char *p, *pe;
  adns_status st;

  st= mkquery_header(ads,vb,id_r,ol+2); if (st) return st;

  MKQUERY_START(vb);

  p= owner; pe= owner+ol;
  nbytes= 0;
  while (p!=pe) {
    ll= 0;
    while (p!=pe && (c= *p++)!='.') {
      if (c=='\\') {
 if (!(flags & adns_qf_quoteok_query)) return adns_s_querydomaininvalid;
 if (ctype_digit(p[0])) {
   if (ctype_digit(p[1]) && ctype_digit(p[2])) {
     c= (p[0] - '0')*100 + (p[1] - '0')*10 + (p[2] - '0');
     p += 3;
     if (c >= 256) return adns_s_querydomaininvalid;
   } else {
     return adns_s_querydomaininvalid;
   }
 } else if (!(c= *p++)) {
   return adns_s_querydomaininvalid;
 }
      }
      if (!(flags & adns_qf_quoteok_query)) {
 if (c == '-') {
   if (!ll) return adns_s_querydomaininvalid;
 } else if (!ctype_alpha(c) && !ctype_digit(c)) {
   return adns_s_querydomaininvalid;
 }
      }
      if (ll == sizeof(label)) return adns_s_querydomaininvalid;
      label[ll++]= c;
    }
    if (!ll) return adns_s_querydomaininvalid;
    if (ll > DNS_MAXLABEL) return adns_s_querydomaintoolong;
    nbytes+= ll+1;
    if (nbytes >= DNS_MAXDOMAIN) return adns_s_querydomaintoolong;
    MKQUERY_ADDB(ll);
    memcpy(rqp,label,(size_t) ll); rqp+= ll;
  }
  MKQUERY_ADDB(0);

  MKQUERY_STOP(vb);

  st= mkquery_footer(vb,typei->type);

  return adns_s_ok;
}
