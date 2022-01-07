
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_5__ {scalar_t__ o; int t; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_NO ;
 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IR_TDUP ;
 scalar_t__ IR_TNEW ;
 int aa_escape (int *,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ irt_istab (int ) ;
 int lua_assert (int) ;

__attribute__((used)) static AliasRet aa_table(jit_State *J, IRRef ta, IRRef tb)
{
  IRIns *taba = IR(ta), *tabb = IR(tb);
  int newa, newb;
  lua_assert(ta != tb);
  lua_assert(irt_istab(taba->t) && irt_istab(tabb->t));

  newa = (taba->o == IR_TNEW || taba->o == IR_TDUP);
  newb = (tabb->o == IR_TNEW || tabb->o == IR_TDUP);
  if (newa && newb)
    return ALIAS_NO;
  if (newb) {
    IRIns *tmp = taba; taba = tabb; tabb = tmp;
  } else if (!newa) {
    return ALIAS_MAY;
  }
  return aa_escape(J, taba, tabb);
}
