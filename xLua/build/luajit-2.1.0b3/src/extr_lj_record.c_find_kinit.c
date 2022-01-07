
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ lua_Number ;
struct TYPE_5__ {int pt; } ;
typedef TYPE_1__ jit_State ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
typedef int cTValue ;
typedef int TRef ;
typedef scalar_t__ IRType ;
typedef scalar_t__ BCReg ;
typedef scalar_t__ BCOp ;
typedef int const BCIns ;


 scalar_t__ BCMbase ;
 scalar_t__ BCMdst ;
 scalar_t__ BC_JMP ;
 scalar_t__ BC_KNUM ;
 scalar_t__ BC_KSHORT ;
 scalar_t__ IRT_INT ;
 scalar_t__ bc_a (int const) ;
 scalar_t__ bc_d (int const) ;
 int bc_j (int const) ;
 scalar_t__ bc_op (int const) ;
 scalar_t__ bcmode_a (scalar_t__) ;
 int lj_ir_kint (TYPE_1__*,scalar_t__) ;
 int lj_ir_knum (TYPE_1__*,scalar_t__) ;
 scalar_t__ numV (int *) ;
 scalar_t__ numberVint (int *) ;
 scalar_t__ numberVnum (int *) ;
 int const* proto_bc (int ) ;
 int * proto_knumtv (int ,scalar_t__) ;
 scalar_t__ tvisint (int *) ;

__attribute__((used)) static TRef find_kinit(jit_State *J, const BCIns *endpc, BCReg slot, IRType t)
{





  const BCIns *pc, *startpc = proto_bc(J->pt);
  for (pc = endpc-1; pc > startpc; pc--) {
    BCIns ins = *pc;
    BCOp op = bc_op(ins);

    if (bcmode_a(op) == BCMbase && bc_a(ins) <= slot) {
      return 0;
    } else if (bcmode_a(op) == BCMdst && bc_a(ins) == slot) {
      if (op == BC_KSHORT || op == BC_KNUM) {

 const BCIns *kpc = pc;
 for (; pc > startpc; pc--)
   if (bc_op(*pc) == BC_JMP) {
     const BCIns *target = pc+bc_j(*pc)+1;
     if (target > kpc && target <= endpc)
       return 0;
   }
 if (op == BC_KSHORT) {
   int32_t k = (int32_t)(int16_t)bc_d(ins);
   return t == IRT_INT ? lj_ir_kint(J, k) : lj_ir_knum(J, (lua_Number)k);
 } else {
   cTValue *tv = proto_knumtv(J->pt, bc_d(ins));
   if (t == IRT_INT) {
     int32_t k = numberVint(tv);
     if (tvisint(tv) || numV(tv) == (lua_Number)k)
       return lj_ir_kint(J, k);
     return 0;
   } else {
     return lj_ir_knum(J, numberVnum(tv));
   }
 }
      }
      return 0;
    }
  }
  return 0;
}
