
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int J; } ;
struct TYPE_11__ {int info; } ;
struct TYPE_9__ {int irt; } ;
struct TYPE_10__ {scalar_t__ op1; scalar_t__ o; scalar_t__ op2; TYPE_1__ t; int i; } ;
typedef TYPE_2__ IRIns ;
typedef int CTypeID ;
typedef TYPE_3__ CType ;
typedef TYPE_4__ ASMState ;


 int CCI_CC_SHIFT ;
 int CCI_OTSHIFT ;
 int CCI_VARARG ;
 int CTF_VARARG ;
 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IR_CARG ;
 int J2G (int ) ;
 scalar_t__ REF_NIL ;
 int ctype_cconv (int) ;
 int ctype_ctsG (int ) ;
 TYPE_3__* ctype_get (int ,int ) ;

__attribute__((used)) static uint32_t asm_callx_flags(ASMState *as, IRIns *ir)
{
  uint32_t nargs = 0;
  if (ir->op1 != REF_NIL) {
    IRIns *ira = IR(ir->op1);
    nargs++;
    while (ira->o == IR_CARG) { nargs++; ira = IR(ira->op1); }
  }
  return (nargs | (ir->t.irt << CCI_OTSHIFT));
}
