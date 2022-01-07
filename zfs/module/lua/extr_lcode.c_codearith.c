
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int info; } ;
struct TYPE_10__ {int k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef scalar_t__ OpCode ;
typedef int FuncState ;


 scalar_t__ OP_LEN ;
 scalar_t__ OP_UNM ;
 int VRELOCABLE ;
 scalar_t__ constfolding (scalar_t__,TYPE_2__*,TYPE_2__*) ;
 int freeexp (int *,TYPE_2__*) ;
 int luaK_codeABC (int *,scalar_t__,int ,int,int) ;
 int luaK_exp2RK (int *,TYPE_2__*) ;
 int luaK_fixline (int *,int) ;

__attribute__((used)) static void codearith (FuncState *fs, OpCode op,
                       expdesc *e1, expdesc *e2, int line) {
  if (constfolding(op, e1, e2))
    return;
  else {
    int o2 = (op != OP_UNM && op != OP_LEN) ? luaK_exp2RK(fs, e2) : 0;
    int o1 = luaK_exp2RK(fs, e1);
    if (o1 > o2) {
      freeexp(fs, e1);
      freeexp(fs, e2);
    }
    else {
      freeexp(fs, e2);
      freeexp(fs, e1);
    }
    e1->u.info = luaK_codeABC(fs, op, 0, o1, o2);
    e1->k = VRELOCABLE;
    luaK_fixline(fs, line);
  }
}
