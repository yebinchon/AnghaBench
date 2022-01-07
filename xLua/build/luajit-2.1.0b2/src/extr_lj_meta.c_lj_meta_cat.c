
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_20__ {int top; } ;
typedef TYPE_2__ lua_State ;
typedef int cTValue ;
struct TYPE_21__ {scalar_t__ len; } ;
struct TYPE_19__ {scalar_t__ total; scalar_t__ threshold; } ;
struct TYPE_18__ {TYPE_1__ gc; } ;
typedef int TValue ;
typedef int SBuf ;
typedef scalar_t__ MSize ;
typedef TYPE_3__ GCstr ;


 TYPE_16__* G (TYPE_2__*) ;
 int LJ_ERR_OPCAT ;
 int LJ_ERR_STROV ;
 int LJ_FR2 ;
 scalar_t__ LJ_MAX_STR ;
 scalar_t__ LJ_UNLIKELY (int) ;
 int MM_concat ;
 int STRFMT_G14 ;
 scalar_t__ STRFMT_MAXBUF_NUM ;
 int copyTV (TYPE_2__*,int *,int *) ;
 int curr_topL (TYPE_2__*) ;
 int intV (int *) ;
 int lj_buf_more (int *,scalar_t__) ;
 int lj_buf_putmem (int *,int ,scalar_t__) ;
 int lj_buf_str (TYPE_2__*,int *) ;
 int * lj_buf_tmp_ (TYPE_2__*) ;
 int lj_cont_cat ;
 int lj_err_msg (TYPE_2__*,int ) ;
 int lj_err_optype (TYPE_2__*,int *,int ) ;
 int lj_gc_step (TYPE_2__*) ;
 int * lj_meta_lookup (TYPE_2__*,int *,int ) ;
 int lj_strfmt_putfnum (int *,int ,int ) ;
 int lj_strfmt_putint (int *,int ) ;
 int numV (int *) ;
 int setcont (int *,int ) ;
 int setnilV (int *) ;
 int setstrV (TYPE_2__*,int *,int ) ;
 TYPE_3__* strV (int *) ;
 int strdata (TYPE_3__*) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvisnumber (int *) ;
 scalar_t__ tvisstr (int *) ;

TValue *lj_meta_cat(lua_State *L, TValue *top, int left)
{
  int fromc = 0;
  if (left < 0) { left = -left; fromc = 1; }
  do {
    if (!(tvisstr(top) || tvisnumber(top)) ||
 !(tvisstr(top-1) || tvisnumber(top-1))) {
      cTValue *mo = lj_meta_lookup(L, top-1, MM_concat);
      if (tvisnil(mo)) {
 mo = lj_meta_lookup(L, top, MM_concat);
 if (tvisnil(mo)) {
   if (tvisstr(top-1) || tvisnumber(top-1)) top++;
   lj_err_optype(L, top-1, LJ_ERR_OPCAT);
   return ((void*)0);
 }
      }
      copyTV(L, top+2*LJ_FR2+2, top);
      copyTV(L, top+2*LJ_FR2+1, top-1);
      copyTV(L, top+LJ_FR2, mo);
      setcont(top-1, lj_cont_cat);
      if (LJ_FR2) { setnilV(top); setnilV(top+2); top += 2; }
      return top+1;
    } else {







      TValue *e, *o = top;
      uint64_t tlen = tvisstr(o) ? strV(o)->len : STRFMT_MAXBUF_NUM;
      SBuf *sb;
      do {
 o--; tlen += tvisstr(o) ? strV(o)->len : STRFMT_MAXBUF_NUM;
      } while (--left > 0 && (tvisstr(o-1) || tvisnumber(o-1)));
      if (tlen >= LJ_MAX_STR) lj_err_msg(L, LJ_ERR_STROV);
      sb = lj_buf_tmp_(L);
      lj_buf_more(sb, (MSize)tlen);
      for (e = top, top = o; o <= e; o++) {
 if (tvisstr(o)) {
   GCstr *s = strV(o);
   MSize len = s->len;
   lj_buf_putmem(sb, strdata(s), len);
 } else if (tvisint(o)) {
   lj_strfmt_putint(sb, intV(o));
 } else {
   lj_strfmt_putfnum(sb, STRFMT_G14, numV(o));
 }
      }
      setstrV(L, top, lj_buf_str(L, sb));
    }
  } while (left >= 1);
  if (LJ_UNLIKELY(G(L)->gc.total >= G(L)->gc.threshold)) {
    if (!fromc) L->top = curr_topL(L);
    lj_gc_step(L);
  }
  return ((void*)0);
}
