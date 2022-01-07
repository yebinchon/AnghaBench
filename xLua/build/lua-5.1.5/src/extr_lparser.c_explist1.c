
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_5__ {int fs; } ;
typedef TYPE_1__ LexState ;


 int expr (TYPE_1__*,int *) ;
 int luaK_exp2nextreg (int ,int *) ;
 scalar_t__ testnext (TYPE_1__*,char) ;

__attribute__((used)) static int explist1 (LexState *ls, expdesc *v) {

  int n = 1;
  expr(ls, v);
  while (testnext(ls, ',')) {
    luaK_exp2nextreg(ls->fs, v);
    expr(ls, v);
    n++;
  }
  return n;
}
