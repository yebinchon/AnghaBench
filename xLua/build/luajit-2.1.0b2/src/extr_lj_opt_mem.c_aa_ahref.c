
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jit_State ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {scalar_t__ op2; scalar_t__ o; scalar_t__ op1; scalar_t__ i; int t; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_MUST ;
 int ALIAS_NO ;
 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_AREF ;
 scalar_t__ IR_HREF ;
 scalar_t__ IR_HREFK ;
 scalar_t__ IR_KSLOT ;
 scalar_t__ IR_NEWREF ;
 int aa_table (int *,scalar_t__,scalar_t__) ;
 scalar_t__ irref_isk (scalar_t__) ;
 int irt_sametype (int ,int ) ;
 int lua_assert (int) ;

__attribute__((used)) static AliasRet aa_ahref(jit_State *J, IRIns *refa, IRIns *refb)
{
  IRRef ka = refa->op2;
  IRRef kb = refb->op2;
  IRIns *keya, *keyb;
  IRRef ta, tb;
  if (refa == refb)
    return ALIAS_MUST;
  keya = IR(ka);
  if (keya->o == IR_KSLOT) { ka = keya->op1; keya = IR(ka); }
  keyb = IR(kb);
  if (keyb->o == IR_KSLOT) { kb = keyb->op1; keyb = IR(kb); }
  ta = (refa->o==IR_HREFK || refa->o==IR_AREF) ? IR(refa->op1)->op1 : refa->op1;
  tb = (refb->o==IR_HREFK || refb->o==IR_AREF) ? IR(refb->op1)->op1 : refb->op1;
  if (ka == kb) {

    if (ta == tb)
      return ALIAS_MUST;
    else
      return aa_table(J, ta, tb);
  }
  if (irref_isk(ka) && irref_isk(kb))
    return ALIAS_NO;
  if (refa->o == IR_AREF) {

    int32_t ofsa = 0, ofsb = 0;
    IRRef basea = ka, baseb = kb;
    lua_assert(refb->o == IR_AREF);

    if (keya->o == IR_ADD && irref_isk(keya->op2)) {
      basea = keya->op1;
      ofsa = IR(keya->op2)->i;
      if (basea == kb && ofsa != 0)
 return ALIAS_NO;
    }
    if (keyb->o == IR_ADD && irref_isk(keyb->op2)) {
      baseb = keyb->op1;
      ofsb = IR(keyb->op2)->i;
      if (ka == baseb && ofsb != 0)
 return ALIAS_NO;
    }
    if (basea == baseb && ofsa != ofsb)
      return ALIAS_NO;
  } else {

    lua_assert((refa->o==IR_HREF || refa->o==IR_HREFK || refa->o==IR_NEWREF) &&
        (refb->o==IR_HREF || refb->o==IR_HREFK || refb->o==IR_NEWREF));
    if (!irt_sametype(keya->t, keyb->t))
      return ALIAS_NO;
  }
  if (ta == tb)
    return ALIAS_MAY;
  else
    return aa_table(J, ta, tb);
}
