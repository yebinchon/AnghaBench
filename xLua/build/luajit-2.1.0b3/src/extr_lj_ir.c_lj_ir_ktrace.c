
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_4__ {int irt; } ;
struct TYPE_5__ {scalar_t__ prev; scalar_t__ op12; int o; TYPE_1__ t; } ;
typedef int TRef ;
typedef int IRRef ;
typedef TYPE_2__ IRIns ;


 TYPE_2__* IR (int ) ;
 int IRT_P64 ;
 int IR_KNULL ;
 int IR_KNUM ;
 scalar_t__ LJ_GC64 ;
 scalar_t__ LJ_TTRACE ;
 int TREF (int ,int ) ;
 int ir_nextkgc (int *) ;
 scalar_t__ irt_toitype_ (int ) ;
 int lua_assert (int) ;

TRef lj_ir_ktrace(jit_State *J)
{
  IRRef ref = ir_nextkgc(J);
  IRIns *ir = IR(ref);
  lua_assert(irt_toitype_(IRT_P64) == LJ_TTRACE);
  ir->t.irt = IRT_P64;
  ir->o = LJ_GC64 ? IR_KNUM : IR_KNULL;
  ir->op12 = 0;
  ir->prev = 0;
  return TREF(ref, IRT_P64);
}
