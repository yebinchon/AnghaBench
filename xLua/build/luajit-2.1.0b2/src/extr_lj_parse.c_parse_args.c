
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int info; int aux; } ;
struct TYPE_23__ {TYPE_1__ s; int sval; } ;
struct TYPE_27__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_26__ {int freereg; int pc; TYPE_3__* bcbase; } ;
struct TYPE_25__ {scalar_t__ linenumber; char tok; scalar_t__ lastline; int tokval; TYPE_5__* fs; } ;
struct TYPE_24__ {scalar_t__ line; } ;
typedef TYPE_4__ LexState ;
typedef TYPE_5__ FuncState ;
typedef TYPE_6__ ExpDesc ;
typedef int BCReg ;
typedef scalar_t__ BCLine ;
typedef int BCIns ;


 int BCINS_ABC (int ,int,int,int) ;
 int BC_CALL ;
 int BC_CALLM ;
 int LJ_ERR_XAMBIG ;
 int LJ_ERR_XFUNARG ;
 int LJ_FR2 ;
 char TK_string ;
 scalar_t__ VCALL ;
 scalar_t__ VKSTR ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VVOID ;
 int bcemit_INS (TYPE_5__*,int ) ;
 int bcptr (TYPE_5__*,TYPE_6__*) ;
 int err_syntax (TYPE_4__*,int ) ;
 int expr_init (TYPE_6__*,scalar_t__,int ) ;
 int expr_list (TYPE_4__*,TYPE_6__*) ;
 int expr_table (TYPE_4__*,TYPE_6__*) ;
 int expr_tonextreg (TYPE_5__*,TYPE_6__*) ;
 int lex_match (TYPE_4__*,char,char,scalar_t__) ;
 int lj_lex_next (TYPE_4__*) ;
 int lua_assert (int) ;
 int setbc_b (int ,int ) ;
 int strV (int *) ;

__attribute__((used)) static void parse_args(LexState *ls, ExpDesc *e)
{
  FuncState *fs = ls->fs;
  ExpDesc args;
  BCIns ins;
  BCReg base;
  BCLine line = ls->linenumber;
  if (ls->tok == '(') {

    if (line != ls->lastline)
      err_syntax(ls, LJ_ERR_XAMBIG);

    lj_lex_next(ls);
    if (ls->tok == ')') {
      args.k = VVOID;
    } else {
      expr_list(ls, &args);
      if (args.k == VCALL)
 setbc_b(bcptr(fs, &args), 0);
    }
    lex_match(ls, ')', '(', line);
  } else if (ls->tok == '{') {
    expr_table(ls, &args);
  } else if (ls->tok == TK_string) {
    expr_init(&args, VKSTR, 0);
    args.u.sval = strV(&ls->tokval);
    lj_lex_next(ls);
  } else {
    err_syntax(ls, LJ_ERR_XFUNARG);
    return;
  }
  lua_assert(e->k == VNONRELOC);
  base = e->u.s.info;
  if (args.k == VCALL) {
    ins = BCINS_ABC(BC_CALLM, base, 2, args.u.s.aux - base - 1 - LJ_FR2);
  } else {
    if (args.k != VVOID)
      expr_tonextreg(fs, &args);
    ins = BCINS_ABC(BC_CALL, base, 2, fs->freereg - base - LJ_FR2);
  }
  expr_init(e, VCALL, bcemit_INS(fs, ins));
  e->u.s.aux = base;
  fs->bcbase[fs->pc - 1].line = line;
  fs->freereg = base+1;
}
