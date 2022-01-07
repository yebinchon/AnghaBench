
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int info; } ;
struct TYPE_16__ {TYPE_2__ s; } ;
struct TYPE_18__ {int k; TYPE_1__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_19__ {int freereg; } ;
typedef TYPE_4__ FuncState ;


 int OP_SELF ;
 int VNONRELOC ;
 int freeexp (TYPE_4__*,TYPE_3__*) ;
 int luaK_codeABC (TYPE_4__*,int ,int,int,int ) ;
 int luaK_exp2RK (TYPE_4__*,TYPE_3__*) ;
 int luaK_exp2anyreg (TYPE_4__*,TYPE_3__*) ;
 int luaK_reserveregs (TYPE_4__*,int) ;

void luaK_self (FuncState *fs, expdesc *e, expdesc *key) {
  int func;
  luaK_exp2anyreg(fs, e);
  freeexp(fs, e);
  func = fs->freereg;
  luaK_reserveregs(fs, 2);
  luaK_codeABC(fs, OP_SELF, func, e->u.s.info, luaK_exp2RK(fs, key));
  freeexp(fs, key);
  e->u.s.info = func;
  e->k = VNONRELOC;
}
