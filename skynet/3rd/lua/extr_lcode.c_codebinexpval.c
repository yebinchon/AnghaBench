
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int info; } ;
struct TYPE_9__ {int k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int OpCode ;
typedef int FuncState ;


 int VRELOCABLE ;
 int freeexps (int *,TYPE_2__*,TYPE_2__*) ;
 int luaK_codeABC (int *,int ,int ,int,int) ;
 int luaK_exp2RK (int *,TYPE_2__*) ;
 int luaK_fixline (int *,int) ;

__attribute__((used)) static void codebinexpval (FuncState *fs, OpCode op,
                           expdesc *e1, expdesc *e2, int line) {
  int rk2 = luaK_exp2RK(fs, e2);
  int rk1 = luaK_exp2RK(fs, e1);
  freeexps(fs, e1, e2);
  e1->u.info = luaK_codeABC(fs, op, 0, rk1, rk2);
  e1->k = VRELOCABLE;
  luaK_fixline(fs, line);
}
