
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86Op ;
struct TYPE_7__ {int r; } ;
struct TYPE_6__ {scalar_t__ op1; scalar_t__ op2; } ;
typedef int RegSet ;
typedef int Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_5__* IR (scalar_t__) ;
 int RSET_FPR ;
 int asm_fuseload (int *,scalar_t__,int ) ;
 scalar_t__ asm_swapops (int *,TYPE_1__*) ;
 int emit_mrm (int *,int ,int ,int ) ;
 int ra_dest (int *,TYPE_1__*,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_left (int *,int ,scalar_t__) ;
 scalar_t__ ra_noreg (int ) ;
 int ra_noweak (int *,int ) ;
 int rset_clear (int ,int ) ;

__attribute__((used)) static void asm_fparith(ASMState *as, IRIns *ir, x86Op xo)
{
  IRRef lref = ir->op1;
  IRRef rref = ir->op2;
  RegSet allow = RSET_FPR;
  Reg dest;
  Reg right = IR(rref)->r;
  if (ra_hasreg(right)) {
    rset_clear(allow, right);
    ra_noweak(as, right);
  }
  dest = ra_dest(as, ir, allow);
  if (lref == rref) {
    right = dest;
  } else if (ra_noreg(right)) {
    if (asm_swapops(as, ir)) {
      IRRef tmp = lref; lref = rref; rref = tmp;
    }
    right = asm_fuseload(as, rref, rset_clear(allow, dest));
  }
  emit_mrm(as, xo, dest, right);
  ra_left(as, dest, lref);
}
