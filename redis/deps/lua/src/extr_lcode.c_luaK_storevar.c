
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int info; int aux; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
struct TYPE_12__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 int OP_SETGLOBAL ;
 int OP_SETTABLE ;
 int OP_SETUPVAL ;




 int exp2reg (int *,TYPE_3__*,int) ;
 int freeexp (int *,TYPE_3__*) ;
 int luaK_codeABC (int *,int ,int,int,int) ;
 int luaK_codeABx (int *,int ,int,int) ;
 int luaK_exp2RK (int *,TYPE_3__*) ;
 int luaK_exp2anyreg (int *,TYPE_3__*) ;
 int lua_assert (int ) ;

void luaK_storevar (FuncState *fs, expdesc *var, expdesc *ex) {
  switch (var->k) {
    case 129: {
      freeexp(fs, ex);
      exp2reg(fs, ex, var->u.s.info);
      return;
    }
    case 128: {
      int e = luaK_exp2anyreg(fs, ex);
      luaK_codeABC(fs, OP_SETUPVAL, e, var->u.s.info, 0);
      break;
    }
    case 131: {
      int e = luaK_exp2anyreg(fs, ex);
      luaK_codeABx(fs, OP_SETGLOBAL, e, var->u.s.info);
      break;
    }
    case 130: {
      int e = luaK_exp2RK(fs, ex);
      luaK_codeABC(fs, OP_SETTABLE, var->u.s.info, var->u.s.aux, e);
      break;
    }
    default: {
      lua_assert(0);
      break;
    }
  }
  freeexp(fs, ex);
}
