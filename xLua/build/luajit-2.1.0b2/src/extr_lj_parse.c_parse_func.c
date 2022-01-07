
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pc; TYPE_1__* bcbase; } ;
struct TYPE_11__ {char tok; TYPE_3__* fs; } ;
struct TYPE_10__ {int line; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;
typedef int ExpDesc ;
typedef int BCLine ;


 int bcemit_store (TYPE_3__*,int *,int *) ;
 int expr_field (TYPE_2__*,int *) ;
 int lj_lex_next (TYPE_2__*) ;
 int parse_body (TYPE_2__*,int *,int,int ) ;
 int var_lookup (TYPE_2__*,int *) ;

__attribute__((used)) static void parse_func(LexState *ls, BCLine line)
{
  FuncState *fs;
  ExpDesc v, b;
  int needself = 0;
  lj_lex_next(ls);

  var_lookup(ls, &v);
  while (ls->tok == '.')
    expr_field(ls, &v);
  if (ls->tok == ':') {
    needself = 1;
    expr_field(ls, &v);
  }
  parse_body(ls, &b, needself, line);
  fs = ls->fs;
  bcemit_store(fs, &v, &b);
  fs->bcbase[fs->pc - 1].line = line;
}
