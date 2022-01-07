
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_16__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ int32_t ;
struct TYPE_17__ {scalar_t__ c; scalar_t__* p; scalar_t__* pe; int sb; TYPE_1__* L; } ;
typedef int MSize ;
typedef TYPE_2__ LexState ;
typedef int GCproto ;


 scalar_t__ BCDUMP_HEAD1 ;
 int LJ_ERR_BCBAD ;
 int LJ_ERR_BCFMT ;
 int bcread_error (TYPE_2__*,int ) ;
 int bcread_header (TYPE_2__*) ;
 int bcread_need (TYPE_2__*,int) ;
 int bcread_oldtop (TYPE_1__*,TYPE_2__*) ;
 int bcread_savetop (TYPE_1__*,TYPE_2__*,int) ;
 int bcread_uleb128 (TYPE_2__*) ;
 int bcread_want (TYPE_2__*,int) ;
 int incr_top (TYPE_1__*) ;
 int * lj_bcread_proto (TYPE_2__*) ;
 int lj_buf_reset (int *) ;
 int lua_assert (int) ;
 int * protoV (int) ;
 int setprotoV (TYPE_1__*,int,int *) ;

GCproto *lj_bcread(LexState *ls)
{
  lua_State *L = ls->L;
  lua_assert(ls->c == BCDUMP_HEAD1);
  bcread_savetop(L, ls, L->top);
  lj_buf_reset(&ls->sb);

  if (!bcread_header(ls))
    bcread_error(ls, LJ_ERR_BCFMT);
  for (;;) {
    GCproto *pt;
    MSize len;
    const char *startp;

    if (ls->p < ls->pe && ls->p[0] == 0) {
      ls->p++;
      break;
    }
    bcread_want(ls, 5);
    len = bcread_uleb128(ls);
    if (!len) break;
    bcread_need(ls, len);
    startp = ls->p;
    pt = lj_bcread_proto(ls);
    if (ls->p != startp + len)
      bcread_error(ls, LJ_ERR_BCBAD);
    setprotoV(L, L->top, pt);
    incr_top(L);
  }
  if ((int32_t)(2*(uint32_t)(ls->pe - ls->p)) > 0 ||
      L->top-1 != bcread_oldtop(L, ls))
    bcread_error(ls, LJ_ERR_BCBAD);

  L->top--;
  return protoV(L->top);
}
