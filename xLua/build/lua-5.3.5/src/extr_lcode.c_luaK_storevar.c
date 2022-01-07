
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int const vt; int t; int idx; } ;
struct TYPE_11__ {TYPE_1__ ind; int info; } ;
struct TYPE_12__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int OpCode ;
typedef int FuncState ;


 int OP_SETTABLE ;
 int OP_SETTABUP ;
 int OP_SETUPVAL ;



 int exp2reg (int *,TYPE_3__*,int ) ;
 int freeexp (int *,TYPE_3__*) ;
 int luaK_codeABC (int *,int ,int,int ,int) ;
 int luaK_exp2RK (int *,TYPE_3__*) ;
 int luaK_exp2anyreg (int *,TYPE_3__*) ;
 int lua_assert (int ) ;

void luaK_storevar (FuncState *fs, expdesc *var, expdesc *ex) {
  switch (var->k) {
    case 129: {
      freeexp(fs, ex);
      exp2reg(fs, ex, var->u.info);
      return;
    }
    case 128: {
      int e = luaK_exp2anyreg(fs, ex);
      luaK_codeABC(fs, OP_SETUPVAL, e, var->u.info, 0);
      break;
    }
    case 130: {
      OpCode op = (var->u.ind.vt == 129) ? OP_SETTABLE : OP_SETTABUP;
      int e = luaK_exp2RK(fs, ex);
      luaK_codeABC(fs, op, var->u.ind.t, var->u.ind.idx, e);
      break;
    }
    default: lua_assert(0);
  }
  freeexp(fs, ex);
}
