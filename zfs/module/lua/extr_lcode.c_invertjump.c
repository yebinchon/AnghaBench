
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int Instruction ;
typedef int FuncState ;


 int GETARG_A (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 scalar_t__ OP_TEST ;
 scalar_t__ OP_TESTSET ;
 int SETARG_A (int ,int) ;
 int * getjumpcontrol (int *,int ) ;
 int lua_assert (int) ;
 scalar_t__ testTMode (scalar_t__) ;

__attribute__((used)) static void invertjump (FuncState *fs, expdesc *e) {
  Instruction *pc = getjumpcontrol(fs, e->u.info);
  lua_assert(testTMode(GET_OPCODE(*pc)) && GET_OPCODE(*pc) != OP_TESTSET &&
                                           GET_OPCODE(*pc) != OP_TEST);
  SETARG_A(*pc, !(GETARG_A(*pc)));
}
