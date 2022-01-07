
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int aux; } ;
struct TYPE_20__ {TYPE_1__ s; int sval; int nval; } ;
struct TYPE_23__ {TYPE_2__ u; } ;
struct TYPE_22__ {int flags; int numparams; int freereg; } ;
struct TYPE_21__ {int tok; int linenumber; TYPE_4__* fs; int tokval; int L; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;
typedef TYPE_5__ ExpDesc ;
typedef int BCReg ;


 int BC_VARG ;
 int LJ_ERR_XDOTS ;
 int LJ_HASFFI ;
 int PROTO_VARARG ;







 int VCALL ;
 int VKCDATA ;
 int VKFALSE ;
 int VKNIL ;
 int VKNUM ;
 int VKSTR ;
 int VKTRUE ;
 int bcemit_ABC (TYPE_4__*,int ,int ,int,int ) ;
 int bcreg_reserve (TYPE_4__*,int) ;
 int checkcond (TYPE_3__*,int,int ) ;
 int copyTV (int ,int *,int *) ;
 int expr_init (TYPE_5__*,int ,int ) ;
 int expr_primary (TYPE_3__*,TYPE_5__*) ;
 int expr_table (TYPE_3__*,TYPE_5__*) ;
 int lj_lex_next (TYPE_3__*) ;
 int parse_body (TYPE_3__*,TYPE_5__*,int ,int ) ;
 int strV (int *) ;
 int tviscdata (int *) ;

__attribute__((used)) static void expr_simple(LexState *ls, ExpDesc *v)
{
  switch (ls->tok) {
  case 130:
    expr_init(v, (LJ_HASFFI && tviscdata(&ls->tokval)) ? VKCDATA : VKNUM, 0);
    copyTV(ls->L, &v->u.nval, &ls->tokval);
    break;
  case 129:
    expr_init(v, VKSTR, 0);
    v->u.sval = strV(&ls->tokval);
    break;
  case 131:
    expr_init(v, VKNIL, 0);
    break;
  case 128:
    expr_init(v, VKTRUE, 0);
    break;
  case 133:
    expr_init(v, VKFALSE, 0);
    break;
  case 134: {
    FuncState *fs = ls->fs;
    BCReg base;
    checkcond(ls, fs->flags & PROTO_VARARG, LJ_ERR_XDOTS);
    bcreg_reserve(fs, 1);
    base = fs->freereg-1;
    expr_init(v, VCALL, bcemit_ABC(fs, BC_VARG, base, 2, fs->numparams));
    v->u.s.aux = base;
    break;
  }
  case '{':
    expr_table(ls, v);
    return;
  case 132:
    lj_lex_next(ls);
    parse_body(ls, v, 0, ls->linenumber);
    return;
  default:
    expr_primary(ls, v);
    return;
  }
  lj_lex_next(ls);
}
