
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int nactvar; scalar_t__ upval; } ;
struct TYPE_9__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef TYPE_2__ BlockCnt ;


 int TK_REPEAT ;
 int TK_UNTIL ;
 int check_match (TYPE_1__*,int ,int ,int) ;
 int cond (TYPE_1__*) ;
 int enterblock (int *,TYPE_2__*,int) ;
 int leaveblock (int *) ;
 int luaK_getlabel (int *) ;
 int luaK_patchclose (int *,int,int ) ;
 int luaK_patchlist (int *,int,int) ;
 int luaX_next (TYPE_1__*) ;
 int statlist (TYPE_1__*) ;

__attribute__((used)) static void repeatstat (LexState *ls, int line) {

  int condexit;
  FuncState *fs = ls->fs;
  int repeat_init = luaK_getlabel(fs);
  BlockCnt bl1, bl2;
  enterblock(fs, &bl1, 1);
  enterblock(fs, &bl2, 0);
  luaX_next(ls);
  statlist(ls);
  check_match(ls, TK_UNTIL, TK_REPEAT, line);
  condexit = cond(ls);
  if (bl2.upval)
    luaK_patchclose(fs, condexit, bl2.nactvar);
  leaveblock(fs);
  luaK_patchlist(fs, condexit, repeat_init);
  leaveblock(fs);
}
