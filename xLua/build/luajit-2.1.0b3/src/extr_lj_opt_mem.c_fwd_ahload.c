
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


struct TYPE_20__ {scalar_t__* chain; int L; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_21__ {int u64; } ;
typedef TYPE_2__ cTValue ;
struct TYPE_22__ {scalar_t__ op1; scalar_t__ op2; scalar_t__ prev; scalar_t__ o; int t; } ;
struct TYPE_19__ {size_t o; int t; } ;
typedef int TValue ;
typedef scalar_t__ TRef ;
typedef scalar_t__ IRRef ;
typedef TYPE_3__ IRIns ;





 TYPE_3__* IR (scalar_t__) ;
 size_t IRDELTA_L2S ;
 scalar_t__ IR_AREF ;
 scalar_t__ IR_HREFK ;
 scalar_t__ IR_KSLOT ;
 size_t IR_NEWREF ;
 scalar_t__ IR_TDUP ;
 scalar_t__ IR_TNEW ;
 scalar_t__ LJ_DUALNUM ;
 scalar_t__ TREF_PRI (scalar_t__) ;
 int aa_ahref (TYPE_1__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_14__* fins ;
 int intV (TYPE_2__*) ;
 int ir_ktab (TYPE_3__*) ;
 scalar_t__ irref_isk (scalar_t__) ;
 scalar_t__ irt_isint (int ) ;
 scalar_t__ irt_isnil (int ) ;
 scalar_t__ irt_isnum (int ) ;
 scalar_t__ irt_ispri (int ) ;
 scalar_t__ irt_isstr (int ) ;
 scalar_t__ irt_type (int ) ;
 scalar_t__ itype2irt (TYPE_2__*) ;
 scalar_t__ lj_ir_kint (TYPE_1__*,int ) ;
 scalar_t__ lj_ir_knum_u64 (TYPE_1__*,int ) ;
 scalar_t__ lj_ir_kstr (TYPE_1__*,int ) ;
 int lj_ir_kvalue (int ,int *,TYPE_3__*) ;
 TYPE_2__* lj_tab_get (int ,int ,int *) ;
 int lua_assert (int) ;
 int strV (TYPE_2__*) ;

__attribute__((used)) static TRef fwd_ahload(jit_State *J, IRRef xref)
{
  IRIns *xr = IR(xref);
  IRRef lim = xref;
  IRRef ref;


  ref = J->chain[fins->o+IRDELTA_L2S];
  while (ref > xref) {
    IRIns *store = IR(ref);
    switch (aa_ahref(J, xr, IR(store->op1))) {
    case 128: break;
    case 130: lim = ref; goto cselim;
    case 129: return store->op2;
    }
    ref = store->prev;
  }


  {
    IRIns *ir = (xr->o == IR_HREFK || xr->o == IR_AREF) ? IR(xr->op1) : xr;
    IRRef tab = ir->op1;
    ir = IR(tab);
    if (ir->o == IR_TNEW || (ir->o == IR_TDUP && irref_isk(xr->op2))) {




      if (xr->o == IR_AREF) {
 IRRef ref2 = J->chain[IR_NEWREF];
 while (ref2 > tab) {
   IRIns *newref = IR(ref2);
   if (irt_isnum(IR(newref->op2)->t))
     goto cselim;
   ref2 = newref->prev;
 }
      }





      while (ref > tab) {
 IRIns *store = IR(ref);
 switch (aa_ahref(J, xr, IR(store->op1))) {
 case 128: break;
 case 130: goto cselim;
 case 129: return store->op2;
 }
 ref = store->prev;
      }
      lua_assert(ir->o != IR_TNEW || irt_isnil(fins->t));
      if (irt_ispri(fins->t)) {
 return TREF_PRI(irt_type(fins->t));
      } else if (irt_isnum(fins->t) || (LJ_DUALNUM && irt_isint(fins->t)) ||
   irt_isstr(fins->t)) {
 TValue keyv;
 cTValue *tv;
 IRIns *key = IR(xr->op2);
 if (key->o == IR_KSLOT) key = IR(key->op1);
 lj_ir_kvalue(J->L, &keyv, key);
 tv = lj_tab_get(J->L, ir_ktab(IR(ir->op1)), &keyv);
 lua_assert(itype2irt(tv) == irt_type(fins->t));
 if (irt_isnum(fins->t))
   return lj_ir_knum_u64(J, tv->u64);
 else if (LJ_DUALNUM && irt_isint(fins->t))
   return lj_ir_kint(J, intV(tv));
 else
   return lj_ir_kstr(J, strV(tv));
      }

    }
  }

cselim:

  ref = J->chain[fins->o];
  while (ref > lim) {
    IRIns *load = IR(ref);
    if (load->op1 == xref)
      return ref;
    ref = load->prev;
  }
  return 0;
}
