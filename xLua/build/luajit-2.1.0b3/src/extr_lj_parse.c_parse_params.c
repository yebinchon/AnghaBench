
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ nactvar; int flags; } ;
struct TYPE_13__ {char tok; TYPE_2__* fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef scalar_t__ BCReg ;


 int LJ_52 ;
 int LJ_ERR_XPARAM ;
 int PROTO_VARARG ;
 char TK_dots ;
 char TK_goto ;
 char TK_name ;
 int bcreg_reserve (TYPE_2__*,scalar_t__) ;
 int err_syntax (TYPE_1__*,int ) ;
 int lex_check (TYPE_1__*,char) ;
 scalar_t__ lex_opt (TYPE_1__*,char) ;
 int lex_str (TYPE_1__*) ;
 int lj_lex_next (TYPE_1__*) ;
 int lua_assert (int) ;
 int var_add (TYPE_1__*,scalar_t__) ;
 int var_new (TYPE_1__*,int ,int ) ;
 int var_new_lit (TYPE_1__*,int ,char*) ;

__attribute__((used)) static BCReg parse_params(LexState *ls, int needself)
{
  FuncState *fs = ls->fs;
  BCReg nparams = 0;
  lex_check(ls, '(');
  if (needself)
    var_new_lit(ls, nparams++, "self");
  if (ls->tok != ')') {
    do {
      if (ls->tok == TK_name || (!LJ_52 && ls->tok == TK_goto)) {
 var_new(ls, nparams++, lex_str(ls));
      } else if (ls->tok == TK_dots) {
 lj_lex_next(ls);
 fs->flags |= PROTO_VARARG;
 break;
      } else {
 err_syntax(ls, LJ_ERR_XPARAM);
      }
    } while (lex_opt(ls, ','));
  }
  var_add(ls, nparams);
  lua_assert(fs->nactvar == nparams);
  bcreg_reserve(fs, nparams);
  lex_check(ls, ')');
  return nparams;
}
