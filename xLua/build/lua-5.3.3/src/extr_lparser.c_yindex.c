
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_6__ {int fs; } ;
typedef TYPE_1__ LexState ;


 int checknext (TYPE_1__*,char) ;
 int expr (TYPE_1__*,int *) ;
 int luaK_exp2val (int ,int *) ;
 int luaX_next (TYPE_1__*) ;

__attribute__((used)) static void yindex (LexState *ls, expdesc *v) {

  luaX_next(ls);
  expr(ls, v);
  luaK_exp2val(ls->fs, v);
  checknext(ls, ']');
}
