
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_37__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


struct TYPE_44__ {int used; int const* buf; } ;
typedef TYPE_4__ vbuf ;
struct TYPE_45__ {int type; int rrsz; scalar_t__ (* parse ) (TYPE_6__*,int,int,int *) ;} ;
typedef TYPE_5__ typeinfo ;
struct timeval {int dummy; } ;
struct TYPE_46__ {int serv; int dglen; int nsstart; int nscount; int arcount; struct timeval now; int const* dgram; TYPE_8__* qu; int ads; } ;
typedef TYPE_6__ parseinfo ;
typedef int dns_rcode ;
typedef int byte ;
typedef scalar_t__ adns_status ;
typedef TYPE_7__* adns_state ;
typedef TYPE_8__* adns_query ;
struct TYPE_43__ {scalar_t__ head; } ;
struct TYPE_48__ {int id; int query_dglen; scalar_t__ state; int udpsent; int flags; int cname_begin; int cname_dglen; scalar_t__ retries; TYPE_4__ vb; int * query_dgram; TYPE_5__* typei; int * cname_dgram; int ads; TYPE_3__ children; TYPE_2__* answer; struct TYPE_48__* next; } ;
struct TYPE_42__ {TYPE_8__* head; } ;
struct TYPE_47__ {int iflags; int childw; TYPE_37__ udpw; TYPE_37__ tcpw; } ;
struct TYPE_40__ {int * bytes; int untyped; } ;
struct TYPE_41__ {int nrrs; TYPE_1__ rrs; int * cname; } ;
typedef int INT ;


 int DNS_CLASS_IN ;
 int DNS_HDRSIZE ;
 int GET_B (int,int) ;
 int GET_W (int,int) ;
 int LIST_LINK_TAIL (int ,TYPE_8__*) ;
 int LIST_UNLINK (TYPE_37__,TYPE_8__*) ;
 int adns__alloc_interim (TYPE_8__*,size_t) ;
 int * adns__alloc_mine (TYPE_8__*,size_t) ;
 int * adns__alloc_preserved (TYPE_8__*,size_t) ;
 int adns__debug (TYPE_7__*,int,TYPE_8__*,char*,...) ;
 int adns__diag (TYPE_7__*,int,TYPE_8__*,char*,...) ;
 int adns__diag_domain (TYPE_7__*,int,TYPE_8__*,TYPE_4__*,int const*,int,int) ;
 scalar_t__ adns__findrr (TYPE_8__*,int,int const*,int,int*,int*,int*,unsigned long*,int*,int*,int*) ;
 scalar_t__ adns__mkquery_frdgram (int ,TYPE_4__*,int*,int *,int,int,int,int) ;
 scalar_t__ adns__parse_domain (TYPE_7__*,int,TYPE_8__*,TYPE_4__*,int ,int const*,int,int*,int) ;
 int adns__query_done (TYPE_8__*) ;
 int adns__query_fail (TYPE_8__*,scalar_t__) ;
 int adns__query_send (TYPE_8__*,struct timeval) ;
 int adns__reset_preserved (TYPE_8__*) ;
 int adns__rrt_typemask ;
 int adns__search_next (TYPE_7__*,TYPE_8__*,struct timeval) ;
 int adns__update_expires (TYPE_8__*,unsigned long,struct timeval) ;
 int adns__vbuf_free (TYPE_4__*) ;
 int adns__vbuf_init (TYPE_4__*) ;
 int adns__warn (TYPE_7__*,int,TYPE_8__*,char*,...) ;
 int adns_if_debug ;
 int adns_qf_cname_forbid ;
 int adns_qf_quotefail_cname ;
 int adns_qf_search ;
 int adns_qf_usevc ;
 int adns_r_cname ;
 int adns_r_ns_raw ;
 int adns_r_soa_raw ;
 scalar_t__ adns_s_invalidresponse ;
 scalar_t__ adns_s_nodata ;
 scalar_t__ adns_s_nomemory ;
 scalar_t__ adns_s_norecurse ;
 scalar_t__ adns_s_nxdomain ;
 scalar_t__ adns_s_prohibitedcname ;
 scalar_t__ adns_s_rcodeformaterror ;
 scalar_t__ adns_s_rcodenotimplemented ;
 scalar_t__ adns_s_rcoderefused ;
 scalar_t__ adns_s_rcodeservfail ;
 scalar_t__ adns_s_rcodeunknown ;
 int assert (int) ;
 scalar_t__ memcmp (int *,int const*,size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int pdf_quoteok ;
 scalar_t__ query_childw ;
 scalar_t__ query_tcpw ;
 scalar_t__ query_tosend ;






 int * realloc (int *,size_t) ;
 int strlen (char*) ;
 scalar_t__ stub1 (TYPE_6__*,int,int,int *) ;

void adns__procdgram(adns_state ads, const byte *dgram, int dglen,
       int serv, int viatcp, struct timeval now) {
  int cbyte, rrstart, wantedrrs, rri, foundsoa, foundns, cname_here;
  int id, f1, f2, qdcount, ancount, nscount, arcount;
  int flg_ra, flg_rd, flg_tc, flg_qr, opcode;
  int rrtype, rrclass, rdlength, rdstart;
  int anstart, nsstart, arstart;
  int ownermatched, l, nrrs;
  unsigned long ttl, soattl;
  const typeinfo *typei;
  adns_query qu, nqu;
  dns_rcode rcode;
  adns_status st;
  vbuf tempvb;
  byte *newquery, *rrsdata;
  parseinfo pai;

  if (dglen<DNS_HDRSIZE) {
    adns__diag(ads,serv,0,"received datagram too short for message header (%d)",dglen);
    return;
  }
  cbyte= 0;
  GET_W(cbyte,id);
  GET_B(cbyte,f1);
  GET_B(cbyte,f2);
  GET_W(cbyte,qdcount);
  GET_W(cbyte,ancount);
  GET_W(cbyte,nscount);
  GET_W(cbyte,arcount);
  assert(cbyte == DNS_HDRSIZE);

  flg_qr= f1&0x80;
  opcode= (f1&0x78)>>3;
  flg_tc= f1&0x02;
  flg_rd= f1&0x01;
  flg_ra= f2&0x80;
  rcode= (f2&0x0f);

  cname_here= 0;

  if (!flg_qr) {
    adns__diag(ads,serv,0,"server sent us a query, not a response");
    return;
  }
  if (opcode) {
    adns__diag(ads,serv,0,"server sent us unknown opcode %d (wanted 0=QUERY)",opcode);
    return;
  }

  qu= 0;


  if (qdcount == 1) {
    for (qu= viatcp ? ads->tcpw.head : ads->udpw.head; qu; qu= nqu) {
      nqu= qu->next;
      if (qu->id != id) continue;
      if (dglen < qu->query_dglen) continue;
      if (memcmp(qu->query_dgram+DNS_HDRSIZE,
   dgram+DNS_HDRSIZE,
   (size_t) qu->query_dglen-DNS_HDRSIZE))
 continue;
      if (viatcp) {
 assert(qu->state == query_tcpw);
      } else {
 assert(qu->state == query_tosend);
 if (!(qu->udpsent & (1<<serv))) continue;
      }
      break;
    }
    if (qu) {

      if (viatcp) LIST_UNLINK(ads->tcpw,qu);
      else LIST_UNLINK(ads->udpw,qu);
    }
  }





  switch (rcode) {
  case 132:
  case 130:
    break;
  case 133:
    adns__warn(ads,serv,qu,"server cannot understand our query (Format Error)");
    if (qu) adns__query_fail(qu,adns_s_rcodeformaterror);
    return;
  case 128:
    if (qu) adns__query_fail(qu,adns_s_rcodeservfail);
    else adns__debug(ads,serv,qu,"server failure on unidentifiable query");
    return;
  case 131:
    adns__warn(ads,serv,qu,"server claims not to implement our query");
    if (qu) adns__query_fail(qu,adns_s_rcodenotimplemented);
    return;
  case 129:
    adns__debug(ads,serv,qu,"server refused our query");
    if (qu) adns__query_fail(qu,adns_s_rcoderefused);
    return;
  default:
    adns__warn(ads,serv,qu,"server gave unknown response code %d",rcode);
    if (qu) adns__query_fail(qu,adns_s_rcodeunknown);
    return;
  }

  if (!qu) {
    if (!qdcount) {
      adns__diag(ads,serv,0,"server sent reply without quoting our question");
    } else if (qdcount>1) {
      adns__diag(ads,serv,0,"server claimed to answer %d questions with one message",
   qdcount);
    } else if (ads->iflags & adns_if_debug) {
      adns__vbuf_init(&tempvb);
      adns__debug(ads,serv,0,"reply not found, id %02x, query owner %s",
    id, adns__diag_domain(ads,serv,0,&tempvb,dgram,dglen,DNS_HDRSIZE));
      adns__vbuf_free(&tempvb);
    }
    return;
  }



  anstart= qu->query_dglen;
  arstart= -1;




  wantedrrs= 0;
  cbyte= anstart;
  for (rri= 0; rri<ancount; rri++) {
    rrstart= cbyte;
    st= adns__findrr(qu,serv, dgram,dglen,&cbyte,
       &rrtype,&rrclass,&ttl, &rdlength,&rdstart,
       &ownermatched);
    if (st) { adns__query_fail(qu,st); return; }
    if (rrtype == -1) goto x_truncated;

    if (rrclass != DNS_CLASS_IN) {
      adns__diag(ads,serv,qu,"ignoring answer RR with wrong class %d (expected IN=%d)",
   rrclass,DNS_CLASS_IN);
      continue;
    }
    if (!ownermatched) {
      if (ads->iflags & adns_if_debug) {
 adns__debug(ads,serv,qu,"ignoring RR with an unexpected owner %s",
      adns__diag_domain(ads,serv,qu, &qu->vb, dgram,dglen,rrstart));
      }
      continue;
    }
    if (rrtype == adns_r_cname &&
 (qu->typei->type & adns__rrt_typemask) != adns_r_cname) {
      if (qu->flags & adns_qf_cname_forbid) {
 adns__query_fail(qu,adns_s_prohibitedcname);
 return;
      } else if (qu->cname_dgram) {
 adns__debug(ads,serv,qu,"allegedly canonical name %s is actually alias for %s",
      qu->answer->cname,
      adns__diag_domain(ads,serv,qu, &qu->vb, dgram,dglen,rdstart));
 adns__query_fail(qu,adns_s_prohibitedcname);
 return;
      } else if (wantedrrs) {
 adns__debug(ads,serv,qu,"ignoring CNAME (to %s) coexisting with RR",
      adns__diag_domain(ads,serv,qu, &qu->vb, dgram,dglen,rdstart));
      } else {
 qu->cname_begin= rdstart;
 qu->cname_dglen= dglen;
 st= adns__parse_domain(ads,serv,qu, &qu->vb,
          qu->flags & adns_qf_quotefail_cname ? 0 : pdf_quoteok,
          dgram,dglen, &rdstart,rdstart+rdlength);
 if (!qu->vb.used) goto x_truncated;
 if (st) { adns__query_fail(qu,st); return; }
 l= strlen((char*)qu->vb.buf)+1;
 qu->answer->cname= adns__alloc_preserved(qu,(size_t) l);
 if (!qu->answer->cname) { adns__query_fail(qu,adns_s_nomemory); return; }

 qu->cname_dgram= adns__alloc_mine(qu, (size_t) dglen);
 memcpy(qu->cname_dgram,dgram,(size_t) dglen);

 memcpy(qu->answer->cname,qu->vb.buf, (size_t) l);
 cname_here= 1;
 adns__update_expires(qu,ttl,now);





      }
    } else if (rrtype == ((INT)qu->typei->type & (INT)adns__rrt_typemask)) {
      wantedrrs++;
    } else {
      adns__debug(ads,serv,qu,"ignoring answer RR with irrelevant type %d",rrtype);
    }
  }




  if (flg_tc) goto x_truncated;

  nsstart= cbyte;

  if (!wantedrrs) {



    foundsoa= 0; soattl= 0; foundns= 0;
    for (rri= 0; rri<nscount; rri++) {
      rrstart= cbyte;
      st= adns__findrr(qu,serv, dgram,dglen,&cbyte,
         &rrtype,&rrclass,&ttl, &rdlength,&rdstart, 0);
      if (st) { adns__query_fail(qu,st); return; }
      if (rrtype==-1) goto x_truncated;
      if (rrclass != DNS_CLASS_IN) {
 adns__diag(ads,serv,qu,
     "ignoring authority RR with wrong class %d (expected IN=%d)",
     rrclass,DNS_CLASS_IN);
 continue;
      }
      if (rrtype == adns_r_soa_raw) { foundsoa= 1; soattl= ttl; break; }
      else if (rrtype == adns_r_ns_raw) { foundns= 1; }
    }

    if (rcode == 130) {

      adns__update_expires(qu,soattl,now);

      if (qu->flags & adns_qf_search) {
 adns__search_next(ads,qu,now);
      } else {
 adns__query_fail(qu,adns_s_nxdomain);
      }
      return;
    }

    if (foundsoa || !foundns) {

      adns__update_expires(qu,soattl,now);
      adns__query_fail(qu,adns_s_nodata);
      return;
    }






    if (cname_here) goto x_restartquery;


    if (!flg_ra) {
      adns__diag(ads,serv,qu,"server is not willing to do recursive lookups for us");
      adns__query_fail(qu,adns_s_norecurse);
    } else {
      if (!flg_rd)
 adns__diag(ads,serv,qu,"server thinks we didn't ask for recursive lookup");
      else
 adns__debug(ads,serv,qu,"server claims to do recursion, but gave us a referral");
      adns__query_fail(qu,adns_s_invalidresponse);
    }
    return;
  }



  qu->answer->rrs.untyped= adns__alloc_interim(qu,(size_t) qu->typei->rrsz*wantedrrs);
  if (!qu->answer->rrs.untyped) { adns__query_fail(qu,adns_s_nomemory); return; }

  typei= qu->typei;
  cbyte= anstart;
  rrsdata= qu->answer->rrs.bytes;

  pai.ads= qu->ads;
  pai.qu= qu;
  pai.serv= serv;
  pai.dgram= dgram;
  pai.dglen= dglen;
  pai.nsstart= nsstart;
  pai.nscount= nscount;
  pai.arcount= arcount;
  pai.now= now;

  for (rri=0, nrrs=0; rri<ancount; rri++) {
    st= adns__findrr(qu,serv, dgram,dglen,&cbyte,
       &rrtype,&rrclass,&ttl, &rdlength,&rdstart,
       &ownermatched);
    assert(!st); assert(rrtype != -1);
    if (rrclass != DNS_CLASS_IN ||
 rrtype != ((INT)qu->typei->type & (INT)adns__rrt_typemask) ||
 !ownermatched)
      continue;
    adns__update_expires(qu,ttl,now);
    st= typei->parse(&pai, rdstart,rdstart+rdlength, rrsdata+nrrs*typei->rrsz);
    if (st) { adns__query_fail(qu,st); return; }
    if (rdstart==-1) goto x_truncated;
    nrrs++;
  }
  assert(nrrs==wantedrrs);
  qu->answer->nrrs= nrrs;


  if (qu->children.head) {
    qu->state= query_childw;
    LIST_LINK_TAIL(ads->childw,qu);
    return;
  }
  adns__query_done(qu);
  return;

 x_truncated:

  if (!flg_tc) {
    adns__diag(ads,serv,qu,"server sent datagram which points outside itself");
    adns__query_fail(qu,adns_s_invalidresponse);
    return;
  }
  qu->flags |= adns_qf_usevc;

 x_restartquery:
  if (qu->cname_dgram) {
    st= adns__mkquery_frdgram(qu->ads,&qu->vb,&qu->id,
         qu->cname_dgram, qu->cname_dglen, qu->cname_begin,
         qu->typei->type, qu->flags);
    if (st) { adns__query_fail(qu,st); return; }

    newquery= realloc(qu->query_dgram, (size_t) qu->vb.used);
    if (!newquery) { adns__query_fail(qu,adns_s_nomemory); return; }

    qu->query_dgram= newquery;
    qu->query_dglen= qu->vb.used;
    memcpy(newquery,qu->vb.buf, (size_t) qu->vb.used);
  }

  if (qu->state == query_tcpw) qu->state= query_tosend;
  qu->retries= 0;
  adns__reset_preserved(qu);
  adns__query_send(qu,now);
}
