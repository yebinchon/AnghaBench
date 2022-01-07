
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbuf ;
typedef int findlabel_state ;
typedef int byte ;
typedef scalar_t__ adns_status ;
typedef int adns_state ;
typedef int adns_rrtype ;
typedef int adns_queryflags ;


 int MKQUERY_ADDB (int) ;
 int MKQUERY_START (int *) ;
 int MKQUERY_STOP (int *) ;
 scalar_t__ adns__findlabel_next (int *,int*,int*) ;
 int adns__findlabel_start (int *,int ,int,int ,int const*,int,int,int,int ) ;
 scalar_t__ adns_s_ok ;
 int assert (int) ;
 int memcpy (int *,int const*,size_t) ;
 scalar_t__ mkquery_footer (int *,int ) ;
 scalar_t__ mkquery_header (int ,int *,int*,int) ;

adns_status adns__mkquery_frdgram(adns_state ads, vbuf *vb, int *id_r,
      const byte *qd_dgram, int qd_dglen, int qd_begin,
      adns_rrtype type, adns_queryflags flags) {
  byte *rqp;
  findlabel_state fls;
  int lablen, labstart;
  adns_status st;

  st= mkquery_header(ads,vb,id_r,qd_dglen); if (st) return st;

  MKQUERY_START(vb);

  adns__findlabel_start(&fls,ads,-1,0,qd_dgram,qd_dglen,qd_dglen,qd_begin,0);
  for (;;) {
    st= adns__findlabel_next(&fls,&lablen,&labstart); assert(!st);
    if (!lablen) break;
    assert(lablen<255);
    MKQUERY_ADDB(lablen);
    memcpy(rqp,qd_dgram+labstart, (size_t) lablen);
    rqp+= lablen;
  }
  MKQUERY_ADDB(0);

  MKQUERY_STOP(vb);

  st= mkquery_footer(vb,type);

  return adns_s_ok;
}
