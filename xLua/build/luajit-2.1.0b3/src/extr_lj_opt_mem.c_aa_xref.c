
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int jit_State ;
struct TYPE_18__ {scalar_t__ u64; } ;
struct TYPE_17__ {int irt; } ;
struct TYPE_16__ {scalar_t__ o; TYPE_2__ t; scalar_t__ i; int op1; int op2; } ;
typedef TYPE_1__ IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_MUST ;
 int ALIAS_NO ;
 TYPE_1__* IR (int ) ;
 int IRT_I8 ;
 int IRT_U64 ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KPTR ;
 scalar_t__ LJ_64 ;
 int aa_cnew (int *,TYPE_1__*,TYPE_1__*) ;
 TYPE_8__* ir_k64 (TYPE_1__*) ;
 scalar_t__ ir_kptr (TYPE_1__*) ;
 scalar_t__ irref_isk (int ) ;
 scalar_t__ irt_isfp (TYPE_2__) ;
 scalar_t__ irt_sametype (TYPE_2__,TYPE_2__) ;
 int irt_size (TYPE_2__) ;
 scalar_t__ irt_typerange (TYPE_2__,int,int ) ;

__attribute__((used)) static AliasRet aa_xref(jit_State *J, IRIns *refa, IRIns *xa, IRIns *xb)
{
  ptrdiff_t ofsa = 0, ofsb = 0;
  IRIns *refb = IR(xb->op1);
  IRIns *basea = refa, *baseb = refb;
  if (refa == refb && irt_sametype(xa->t, xb->t))
    return ALIAS_MUST;

  if (refa->o == IR_ADD && irref_isk(refa->op2)) {
    IRIns *irk = IR(refa->op2);
    basea = IR(refa->op1);
    ofsa = (LJ_64 && irk->o == IR_KINT64) ? (ptrdiff_t)ir_k64(irk)->u64 :
         (ptrdiff_t)irk->i;
  }
  if (refb->o == IR_ADD && irref_isk(refb->op2)) {
    IRIns *irk = IR(refb->op2);
    baseb = IR(refb->op1);
    ofsb = (LJ_64 && irk->o == IR_KINT64) ? (ptrdiff_t)ir_k64(irk)->u64 :
         (ptrdiff_t)irk->i;
  }

  if (basea->o == IR_KPTR && baseb->o == IR_KPTR) {
    ofsb += (char *)ir_kptr(baseb) - (char *)ir_kptr(basea);
    baseb = basea;
  }




  if (basea == baseb) {
    ptrdiff_t sza = irt_size(xa->t), szb = irt_size(xb->t);
    if (ofsa == ofsb) {
      if (sza == szb && irt_isfp(xa->t) == irt_isfp(xb->t))
 return ALIAS_MUST;
    } else if (ofsa + sza <= ofsb || ofsb + szb <= ofsa) {
      return ALIAS_NO;
    }

    return ALIAS_MAY;
  }
  if (!irt_sametype(xa->t, xb->t) &&
      !(irt_typerange(xa->t, IRT_I8, IRT_U64) &&
 ((xa->t.irt - IRT_I8) ^ (xb->t.irt - IRT_I8)) == 1))
    return ALIAS_NO;

  return aa_cnew(J, basea, baseb);
}
