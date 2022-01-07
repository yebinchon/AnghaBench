
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char tok; int * fs; int linenumber; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int ExpDesc ;
typedef int BCLine ;


 int LJ_52 ;
 int LJ_ERR_XSYMBOL ;
 scalar_t__ LJ_FR2 ;
 char TK_goto ;
 char TK_name ;
 char TK_string ;
 int bcemit_method (int *,int *,int *) ;
 int bcreg_reserve (int *,int) ;
 int err_syntax (TYPE_1__*,int ) ;
 int expr (TYPE_1__*,int *) ;
 int expr_bracket (TYPE_1__*,int *) ;
 int expr_discharge (int *,int *) ;
 int expr_field (TYPE_1__*,int *) ;
 int expr_index (int *,int *,int *) ;
 int expr_str (TYPE_1__*,int *) ;
 int expr_toanyreg (int *,int *) ;
 int expr_tonextreg (int *,int *) ;
 int lex_match (TYPE_1__*,char,char,int ) ;
 int lj_lex_next (TYPE_1__*) ;
 int parse_args (TYPE_1__*,int *) ;
 int var_lookup (TYPE_1__*,int *) ;

__attribute__((used)) static void expr_primary(LexState *ls, ExpDesc *v)
{
  FuncState *fs = ls->fs;

  if (ls->tok == '(') {
    BCLine line = ls->linenumber;
    lj_lex_next(ls);
    expr(ls, v);
    lex_match(ls, ')', '(', line);
    expr_discharge(ls->fs, v);
  } else if (ls->tok == TK_name || (!LJ_52 && ls->tok == TK_goto)) {
    var_lookup(ls, v);
  } else {
    err_syntax(ls, LJ_ERR_XSYMBOL);
  }
  for (;;) {
    if (ls->tok == '.') {
      expr_field(ls, v);
    } else if (ls->tok == '[') {
      ExpDesc key;
      expr_toanyreg(fs, v);
      expr_bracket(ls, &key);
      expr_index(fs, v, &key);
    } else if (ls->tok == ':') {
      ExpDesc key;
      lj_lex_next(ls);
      expr_str(ls, &key);
      bcemit_method(fs, v, &key);
      parse_args(ls, v);
    } else if (ls->tok == '(' || ls->tok == TK_string || ls->tok == '{') {
      expr_tonextreg(fs, v);
      if (LJ_FR2) bcreg_reserve(fs, 1);
      parse_args(ls, v);
    } else {
      break;
    }
  }
}
