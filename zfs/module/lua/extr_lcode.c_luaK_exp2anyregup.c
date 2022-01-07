
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ k; } ;
typedef TYPE_1__ expdesc ;
typedef int FuncState ;


 scalar_t__ VUPVAL ;
 scalar_t__ hasjumps (TYPE_1__*) ;
 int luaK_exp2anyreg (int *,TYPE_1__*) ;

void luaK_exp2anyregup (FuncState *fs, expdesc *e) {
  if (e->k != VUPVAL || hasjumps(e))
    luaK_exp2anyreg(fs, e);
}
