
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_5__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;


 int checkname (TYPE_1__*,int *) ;
 int luaK_exp2anyregup (int *,int *) ;
 int luaK_indexed (int *,int *,int *) ;
 int luaX_next (TYPE_1__*) ;

__attribute__((used)) static void fieldsel (LexState *ls, expdesc *v) {

  FuncState *fs = ls->fs;
  expdesc key;
  luaK_exp2anyregup(fs, v);
  luaX_next(ls);
  checkname(ls, &key);
  luaK_indexed(fs, v, &key);
}
