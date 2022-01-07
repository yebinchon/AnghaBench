
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int info; } ;
struct TYPE_14__ {scalar_t__ k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_15__ {int pc; } ;
typedef int Instruction ;
typedef TYPE_3__ FuncState ;


 int GETARG_B (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 int NO_REG ;
 scalar_t__ OP_NOT ;
 int OP_TEST ;
 int OP_TESTSET ;
 scalar_t__ VRELOCABLE ;
 int condjump (TYPE_3__*,int ,int ,int ,int) ;
 int discharge2anyreg (TYPE_3__*,TYPE_2__*) ;
 int freeexp (TYPE_3__*,TYPE_2__*) ;
 int getinstruction (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int jumponcond (FuncState *fs, expdesc *e, int cond) {
  if (e->k == VRELOCABLE) {
    Instruction ie = getinstruction(fs, e);
    if (GET_OPCODE(ie) == OP_NOT) {
      fs->pc--;
      return condjump(fs, OP_TEST, GETARG_B(ie), 0, !cond);
    }

  }
  discharge2anyreg(fs, e);
  freeexp(fs, e);
  return condjump(fs, OP_TESTSET, NO_REG, e->u.info, cond);
}
