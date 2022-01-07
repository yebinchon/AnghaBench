
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * code; } ;
typedef TYPE_1__ Proto ;
typedef int OpCode ;
typedef int Instruction ;


 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 int GETARG_sBx (int ) ;
 int GET_OPCODE (int ) ;






 int filterpc (int,int) ;
 int testAMode (int) ;

__attribute__((used)) static int findsetreg (Proto *p, int lastpc, int reg) {
  int pc;
  int setreg = -1;
  int jmptarget = 0;
  for (pc = 0; pc < lastpc; pc++) {
    Instruction i = p->code[pc];
    OpCode op = GET_OPCODE(i);
    int a = GETARG_A(i);
    switch (op) {
      case 131: {
        int b = GETARG_B(i);
        if (a <= reg && reg <= a + b)
          setreg = filterpc(pc, jmptarget);
        break;
      }
      case 128: {
        if (reg >= a + 2)
          setreg = filterpc(pc, jmptarget);
        break;
      }
      case 133:
      case 130: {
        if (reg >= a)
          setreg = filterpc(pc, jmptarget);
        break;
      }
      case 132: {
        int b = GETARG_sBx(i);
        int dest = pc + 1 + b;

        if (pc < dest && dest <= lastpc) {
          if (dest > jmptarget)
            jmptarget = dest;
        }
        break;
      }
      case 129: {
        if (reg == a)
          setreg = filterpc(pc, jmptarget);
        break;
      }
      default:
        if (testAMode(op) && reg == a)
          setreg = filterpc(pc, jmptarget);
        break;
    }
  }
  return setreg;
}
