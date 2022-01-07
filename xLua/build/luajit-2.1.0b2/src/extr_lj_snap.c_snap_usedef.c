
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_11__ {TYPE_6__* pt; TYPE_1__* L; } ;
typedef TYPE_3__ jit_State ;
struct TYPE_13__ {int sizebc; } ;
struct TYPE_10__ {int nextgc; } ;
struct TYPE_12__ {TYPE_2__ gch; } ;
struct TYPE_9__ {scalar_t__ base; int openupval; } ;
typedef TYPE_4__ GCobj ;
typedef scalar_t__ BCReg ;
typedef int BCOp ;
typedef int const BCIns ;
 int BC_CALLM ;
 int BC_CALLMT ;
 int BC_CALLT ;
 int BC_CAT ;
 int BC_FORI ;
 int BC_ISFC ;
 int BC_ISTC ;
 int BC_ITERC ;
 int BC_ITERL ;
 int BC_ITERN ;
 int BC_JFORL ;
 int BC_JITERL ;
 int BC_JLOOP ;
 int BC_KNIL ;
 int BC_RETM ;
 int BC_TSETM ;
 int BC_UCLO ;
 int BC_VARG ;
 int DEF_SLOT (scalar_t__) ;
 scalar_t__ FORL_EXT ;
 scalar_t__ LJ_FR2 ;
 scalar_t__ SNAP_USEDEF_SLOTS ;
 int USE_SLOT (scalar_t__) ;
 scalar_t__ bc_a (int const) ;
 scalar_t__ bc_b (int const) ;
 scalar_t__ bc_c (int const) ;
 scalar_t__ bc_d (int const) ;
 int bc_isret (int ) ;
 int bc_j (int const) ;
 int bc_op (int const) ;
 int bcmode_a (int ) ;
 int bcmode_b (int ) ;
 int bcmode_c (int ) ;
 int gco2uv (TYPE_4__*) ;
 TYPE_4__* gcref (int ) ;
 int lua_assert (int) ;
 int memset (scalar_t__*,int,scalar_t__) ;
 int const* proto_bc (TYPE_6__*) ;
 size_t uvval (int ) ;

__attribute__((used)) static BCReg snap_usedef(jit_State *J, uint8_t *udf,
    const BCIns *pc, BCReg maxslot)
{
  BCReg s;
  GCobj *o;

  if (maxslot == 0) return 0;




  memset(udf, 1, maxslot);



  o = gcref(J->L->openupval);
  while (o) {
    if (uvval(gco2uv(o)) < J->L->base) break;
    udf[uvval(gco2uv(o)) - J->L->base] = 0;
    o = gcref(o->gch.nextgc);
  }





  lua_assert(pc >= proto_bc(J->pt) && pc < proto_bc(J->pt) + J->pt->sizebc);
  for (;;) {
    BCIns ins = *pc++;
    BCOp op = bc_op(ins);
    switch (bcmode_b(op)) {
    case 128: udf[(bc_b(ins))] &= ~1; break;
    default: break;
    }
    switch (bcmode_c(op)) {
    case 128: udf[(bc_c(ins))] &= ~1; break;
    case 129:
      lua_assert(op == BC_CAT);
      for (s = bc_b(ins); s <= bc_c(ins); s++) udf[(s)] &= ~1;
      for (; s < maxslot; s++) udf[(s)] *= 3;
      break;
    case 131:
    handle_jump: {
      BCReg minslot = bc_a(ins);
      if (op >= BC_FORI && op <= BC_JFORL) minslot += FORL_EXT;
      else if (op >= BC_ITERL && op <= BC_JITERL) minslot += bc_b(pc[-2])-1;
      else if (op == BC_UCLO) { pc += bc_j(ins); break; }
      for (s = minslot; s < maxslot; s++) udf[(s)] *= 3;
      return minslot < maxslot ? minslot : maxslot;
      }
    case 130:
      if (op == BC_JFORL || op == BC_JITERL || op == BC_JLOOP) {
 goto handle_jump;
      } else if (bc_isret(op)) {
 BCReg top = op == BC_RETM ? maxslot : (bc_a(ins) + bc_d(ins)-1);
 for (s = 0; s < bc_a(ins); s++) udf[(s)] *= 3;
 for (; s < top; s++) udf[(s)] &= ~1;
 for (; s < maxslot; s++) udf[(s)] *= 3;
 return 0;
      }
      break;
    case 132: return maxslot;
    default: break;
    }
    switch (bcmode_a(op)) {
    case 128: udf[(bc_a(ins))] &= ~1; break;
    case 133:
       if (!(op == BC_ISTC || op == BC_ISFC)) udf[(bc_a(ins))] *= 3;
       break;
    case 134:
      if (op >= BC_CALLM && op <= BC_VARG) {
 BCReg top = (op == BC_CALLM || op == BC_CALLMT || bc_c(ins) == 0) ?
      maxslot : (bc_a(ins) + bc_c(ins)+LJ_FR2);
 if (LJ_FR2) udf[(bc_a(ins)+1)] *= 3;
 s = bc_a(ins) - ((op == BC_ITERC || op == BC_ITERN) ? 3 : 0);
 for (; s < top; s++) udf[(s)] &= ~1;
 for (; s < maxslot; s++) udf[(s)] *= 3;
 if (op == BC_CALLT || op == BC_CALLMT) {
   for (s = 0; s < bc_a(ins); s++) udf[(s)] *= 3;
   return 0;
 }
      } else if (op == BC_KNIL) {
 for (s = bc_a(ins); s <= bc_d(ins); s++) udf[(s)] *= 3;
      } else if (op == BC_TSETM) {
 for (s = bc_a(ins)-1; s < maxslot; s++) udf[(s)] &= ~1;
      }
      break;
    default: break;
    }
    lua_assert(pc >= proto_bc(J->pt) && pc < proto_bc(J->pt) + J->pt->sizebc);
  }




  return 0;
}
