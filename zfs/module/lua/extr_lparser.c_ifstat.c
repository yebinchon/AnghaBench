
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ token; } ;
struct TYPE_9__ {TYPE_1__ t; int * fs; } ;
typedef TYPE_2__ LexState ;
typedef int FuncState ;


 int NO_JUMP ;
 int TK_ELSE ;
 scalar_t__ TK_ELSEIF ;
 int TK_END ;
 int TK_IF ;
 int block (TYPE_2__*) ;
 int check_match (TYPE_2__*,int ,int ,int) ;
 int luaK_patchtohere (int *,int) ;
 int test_then_block (TYPE_2__*,int*) ;
 scalar_t__ testnext (TYPE_2__*,int ) ;

__attribute__((used)) static void ifstat (LexState *ls, int line) {

  FuncState *fs = ls->fs;
  int escapelist = NO_JUMP;
  test_then_block(ls, &escapelist);
  while (ls->t.token == TK_ELSEIF)
    test_then_block(ls, &escapelist);
  if (testnext(ls, TK_ELSE))
    block(ls);
  check_match(ls, TK_END, TK_IF, line);
  luaK_patchtohere(fs, escapelist);
}
