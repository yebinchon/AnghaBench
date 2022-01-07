
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ used; } ;
typedef TYPE_1__ vbuf ;
typedef int parsedomain_flags ;
typedef int findlabel_state ;
typedef int const byte ;
typedef scalar_t__ adns_status ;
typedef int adns_state ;
typedef int adns_query ;


 scalar_t__ adns__findlabel_next (int *,int*,int*) ;
 int adns__vbuf_append (TYPE_1__*,int const*,int) ;
 scalar_t__ adns_s_answerdomaininvalid ;
 scalar_t__ adns_s_nomemory ;
 scalar_t__ adns_s_ok ;
 int ctype_alpha (int) ;
 int ctype_digit (int) ;
 int pdf_quoteok ;
 int vbuf__append_quoted1035 (TYPE_1__*,int const*,int) ;

adns_status adns__parse_domain_more(findlabel_state *fls, adns_state ads,
        adns_query qu, vbuf *vb, parsedomain_flags flags,
        const byte *dgram) {
  int lablen, labstart, i, ch, first;
  adns_status st;

  first= 1;
  for (;;) {
    st= adns__findlabel_next(fls,&lablen,&labstart);
    if (st) return st;
    if (lablen<0) { vb->used=0; return adns_s_ok; }
    if (!lablen) break;
    if (first) {
      first= 0;
    } else {
      if (!adns__vbuf_append(vb,(byte*)".",1)) return adns_s_nomemory;
    }
    if (flags & pdf_quoteok) {
      if (!vbuf__append_quoted1035(vb,dgram+labstart,lablen))
 return adns_s_nomemory;
    } else {
      ch= dgram[labstart];
      if (!ctype_alpha(ch) && !ctype_digit(ch)) return adns_s_answerdomaininvalid;
      for (i= labstart+1; i<labstart+lablen; i++) {
 ch= dgram[i];
 if (ch != '-' && !ctype_alpha(ch) && !ctype_digit(ch))
   return adns_s_answerdomaininvalid;
      }
      if (!adns__vbuf_append(vb,dgram+labstart,lablen))
 return adns_s_nomemory;
    }
  }
  if (!adns__vbuf_append(vb,(byte*)"",1)) return adns_s_nomemory;
  return adns_s_ok;
}
