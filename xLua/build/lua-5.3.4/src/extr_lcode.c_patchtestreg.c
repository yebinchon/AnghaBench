
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;
typedef int FuncState ;


 int CREATE_ABC (int ,int,int ,int ) ;
 int GETARG_B (int ) ;
 int GETARG_C (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 int NO_REG ;
 int OP_TEST ;
 scalar_t__ OP_TESTSET ;
 int SETARG_A (int ,int) ;
 int * getjumpcontrol (int *,int) ;

__attribute__((used)) static int patchtestreg (FuncState *fs, int node, int reg) {
  Instruction *i = getjumpcontrol(fs, node);
  if (GET_OPCODE(*i) != OP_TESTSET)
    return 0;
  if (reg != NO_REG && reg != GETARG_B(*i))
    SETARG_A(*i, reg);
  else {


    *i = CREATE_ABC(OP_TEST, GETARG_B(*i), 0, GETARG_C(*i));
  }
  return 1;
}
