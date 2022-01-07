
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expdesc ;
typedef int FuncState ;


 scalar_t__ hasjumps (int *) ;
 int luaK_dischargevars (int *,int *) ;
 int luaK_exp2anyreg (int *,int *) ;

void luaK_exp2val (FuncState *fs, expdesc *e) {
  if (hasjumps(e))
    luaK_exp2anyreg(fs, e);
  else
    luaK_dischargevars(fs, e);
}
