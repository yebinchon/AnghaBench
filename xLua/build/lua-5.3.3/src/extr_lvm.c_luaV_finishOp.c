
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int top; TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_9__ {int base; int * savedpc; } ;
struct TYPE_10__ {TYPE_1__ l; } ;
struct TYPE_12__ {int callstatus; int top; TYPE_2__ u; } ;
typedef int StkId ;
typedef int OpCode ;
typedef int Instruction ;
typedef TYPE_4__ CallInfo ;


 int CIST_LEQ ;
 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 int GETARG_C (int ) ;
 int GET_OPCODE (int ) ;
 int OP_JMP ;
 int OP_TFORLOOP ;

 int cast_int (scalar_t__) ;
 int l_isfalse (int ) ;
 int luaV_concat (TYPE_3__*,int) ;
 int lua_assert (int) ;
 int setobj2s (TYPE_3__*,int,int) ;
 int setobjs2s (TYPE_3__*,int,int ) ;

void luaV_finishOp (lua_State *L) {
  CallInfo *ci = L->ci;
  StkId base = ci->u.l.base;
  Instruction inst = *(ci->u.l.savedpc - 1);
  OpCode op = GET_OPCODE(inst);
  switch (op) {
    case 154: case 131: case 138: case 147: case 143:
    case 153: case 151: case 150: case 133: case 132:
    case 139: case 137:
    case 128: case 152: case 141:
    case 144: case 145: case 136: {
      setobjs2s(L, base + GETARG_A(inst), --L->top);
      break;
    }
    case 142: case 140: case 146: {
      int res = !l_isfalse(L->top - 1);
      L->top--;
      if (ci->callstatus & CIST_LEQ) {
        lua_assert(op == 142);
        ci->callstatus ^= CIST_LEQ;
        res = !res;
      }
      lua_assert(GET_OPCODE(*ci->u.l.savedpc) == OP_JMP);
      if (res != GETARG_A(inst))
        ci->u.l.savedpc++;
      break;
    }
    case 148: {
      StkId top = L->top - 1;
      int b = GETARG_B(inst);
      int total = cast_int(top - 1 - (base + b));
      setobj2s(L, top - 2, top);
      if (total > 1) {
        L->top = top - 1;
        luaV_concat(L, total);
      }

      setobj2s(L, ci->u.l.base + GETARG_A(inst), L->top - 1);
      L->top = ci->top;
      break;
    }
    case 129: {
      lua_assert(GET_OPCODE(*ci->u.l.savedpc) == OP_TFORLOOP);
      L->top = ci->top;
      break;
    }
    case 149: {
      if (GETARG_C(inst) - 1 >= 0)
        L->top = ci->top;
      break;
    }
    case 130: case 134: case 135:
      break;
    default: lua_assert(0);
  }
}
