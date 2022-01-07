
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
typedef int cTValue ;
struct TYPE_21__ {scalar_t__ info; } ;
struct TYPE_22__ {TYPE_1__ s; int nval; } ;
struct TYPE_24__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_23__ {int flags; } ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef scalar_t__ BCReg ;
typedef int BCIns ;


 int BCINS_AD (int ,scalar_t__,scalar_t__) ;
 int BC_KCDATA ;
 int BC_KNUM ;
 int BC_KPRI ;
 int BC_KSHORT ;
 int BC_KSTR ;
 int BC_MOV ;
 int LJ_TCDATA ;
 int PROTO_FFI ;
 scalar_t__ VJMP ;
 scalar_t__ VKCDATA ;
 scalar_t__ VKNIL ;
 scalar_t__ VKNUM ;
 scalar_t__ VKSTR ;
 scalar_t__ VKTRUE ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VRELOCABLE ;
 scalar_t__ VVOID ;
 int bcemit_INS (TYPE_3__*,int ) ;
 int bcemit_nil (TYPE_3__*,scalar_t__,int) ;
 int bcptr (TYPE_3__*,TYPE_4__*) ;
 int cdataV (int *) ;
 scalar_t__ checki16 (scalar_t__) ;
 scalar_t__ const_gc (TYPE_3__*,int ,int ) ;
 scalar_t__ const_num (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ const_pri (TYPE_4__*) ;
 scalar_t__ const_str (TYPE_3__*,TYPE_4__*) ;
 int expr_discharge (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ expr_numberV (TYPE_4__*) ;
 int * expr_numtv (TYPE_4__*) ;
 scalar_t__ intV (int *) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 int lua_assert (int) ;
 int obj2gco (int ) ;
 int setbc_a (int ,scalar_t__) ;
 scalar_t__ tvisint (int *) ;

__attribute__((used)) static void expr_toreg_nobranch(FuncState *fs, ExpDesc *e, BCReg reg)
{
  BCIns ins;
  expr_discharge(fs, e);
  if (e->k == VKSTR) {
    ins = BCINS_AD(BC_KSTR, reg, const_str(fs, e));
  } else if (e->k == VKNUM) {






    lua_Number n = expr_numberV(e);
    int32_t k = lj_num2int(n);
    if (checki16(k) && n == (lua_Number)k)
      ins = BCINS_AD(BC_KSHORT, reg, (BCReg)(uint16_t)k);
    else

      ins = BCINS_AD(BC_KNUM, reg, const_num(fs, e));






  } else if (e->k == VRELOCABLE) {
    setbc_a(bcptr(fs, e), reg);
    goto noins;
  } else if (e->k == VNONRELOC) {
    if (reg == e->u.s.info)
      goto noins;
    ins = BCINS_AD(BC_MOV, reg, e->u.s.info);
  } else if (e->k == VKNIL) {
    bcemit_nil(fs, reg, 1);
    goto noins;
  } else if (e->k <= VKTRUE) {
    ins = BCINS_AD(BC_KPRI, reg, const_pri(e));
  } else {
    lua_assert(e->k == VVOID || e->k == VJMP);
    return;
  }
  bcemit_INS(fs, ins);
noins:
  e->u.s.info = reg;
  e->k = VNONRELOC;
}
