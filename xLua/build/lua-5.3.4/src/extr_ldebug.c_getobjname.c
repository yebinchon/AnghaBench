
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * k; int * code; } ;
typedef TYPE_1__ Proto ;
typedef int OpCode ;
typedef int Instruction ;


 int GETARG_A (int ) ;
 int GETARG_Ax (int ) ;
 int GETARG_B (int ) ;
 int GETARG_Bx (int ) ;
 int GETARG_C (int ) ;
 int GET_OPCODE (int ) ;
 int LUA_ENV ;







 int findsetreg (TYPE_1__*,int,int) ;
 int kname (TYPE_1__*,int,int,char const**) ;
 char* luaF_getlocalname (TYPE_1__*,int,int) ;
 int strcmp (char const*,int ) ;
 char* svalue (int *) ;
 int ttisstring (int *) ;
 char* upvalname (TYPE_1__*,int) ;

__attribute__((used)) static const char *getobjname (Proto *p, int lastpc, int reg,
                               const char **name) {
  int pc;
  *name = luaF_getlocalname(p, reg + 1, lastpc);
  if (*name)
    return "local";

  pc = findsetreg(p, lastpc, reg);
  if (pc != -1) {
    Instruction i = p->code[pc];
    OpCode op = GET_OPCODE(i);
    switch (op) {
      case 129: {
        int b = GETARG_B(i);
        if (b < GETARG_A(i))
          return getobjname(p, pc, b, name);
        break;
      }
      case 133:
      case 134: {
        int k = GETARG_C(i);
        int t = GETARG_B(i);
        const char *vn = (op == 134)
                         ? luaF_getlocalname(p, t + 1, pc)
                         : upvalname(p, t);
        kname(p, pc, k, name);
        return (vn && strcmp(vn, LUA_ENV) == 0) ? "global" : "field";
      }
      case 132: {
        *name = upvalname(p, GETARG_B(i));
        return "upvalue";
      }
      case 131:
      case 130: {
        int b = (op == 131) ? GETARG_Bx(i)
                                 : GETARG_Ax(p->code[pc + 1]);
        if (ttisstring(&p->k[b])) {
          *name = svalue(&p->k[b]);
          return "constant";
        }
        break;
      }
      case 128: {
        int k = GETARG_C(i);
        kname(p, pc, k, name);
        return "method";
      }
      default: break;
    }
  }
  return ((void*)0);
}
