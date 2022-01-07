
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int ExpDesc ;


 int expr_index (int *,int *,int *) ;
 int expr_str (TYPE_1__*,int *) ;
 int expr_toanyreg (int *,int *) ;
 int lj_lex_next (TYPE_1__*) ;

__attribute__((used)) static void expr_field(LexState *ls, ExpDesc *v)
{
  FuncState *fs = ls->fs;
  ExpDesc key;
  expr_toanyreg(fs, v);
  lj_lex_next(ls);
  expr_str(ls, &key);
  expr_index(fs, v, &key);
}
