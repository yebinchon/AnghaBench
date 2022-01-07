
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int aux; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
struct TYPE_22__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_21__ {int flags; int nactvar; int pc; } ;
struct TYPE_20__ {char tok; TYPE_4__* fs; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;
typedef TYPE_5__ ExpDesc ;
typedef int BCReg ;
typedef int BCIns ;


 int BCINS_AD (scalar_t__,int,int) ;
 scalar_t__ BC_CALL ;
 scalar_t__ BC_CALLT ;
 scalar_t__ BC_RET ;
 scalar_t__ BC_RET0 ;
 scalar_t__ BC_RET1 ;
 scalar_t__ BC_RETM ;
 int BC_UCLO ;
 scalar_t__ BC_VARG ;
 int PROTO_CHILD ;
 int PROTO_HAS_RETURN ;
 scalar_t__ VCALL ;
 int bc_a (int ) ;
 int bc_c (int ) ;
 scalar_t__ bc_op (int ) ;
 int bcemit_AJ (TYPE_4__*,int ,int ,int ) ;
 int bcemit_INS (TYPE_4__*,int ) ;
 int * bcptr (TYPE_4__*,TYPE_5__*) ;
 int expr_list (TYPE_3__*,TYPE_5__*) ;
 int expr_toanyreg (TYPE_4__*,TYPE_5__*) ;
 int expr_tonextreg (TYPE_4__*,TYPE_5__*) ;
 int lj_lex_next (TYPE_3__*) ;
 scalar_t__ parse_isend (char) ;
 int setbc_b (int *,int ) ;

__attribute__((used)) static void parse_return(LexState *ls)
{
  BCIns ins;
  FuncState *fs = ls->fs;
  lj_lex_next(ls);
  fs->flags |= PROTO_HAS_RETURN;
  if (parse_isend(ls->tok) || ls->tok == ';') {
    ins = BCINS_AD(BC_RET0, 0, 1);
  } else {
    ExpDesc e;
    BCReg nret = expr_list(ls, &e);
    if (nret == 1) {
      if (e.k == VCALL) {
 BCIns *ip = bcptr(fs, &e);

 if (bc_op(*ip) == BC_VARG) goto notailcall;
 fs->pc--;
 ins = BCINS_AD(bc_op(*ip)-BC_CALL+BC_CALLT, bc_a(*ip), bc_c(*ip));
      } else {
 ins = BCINS_AD(BC_RET1, expr_toanyreg(fs, &e), 2);
      }
    } else {
      if (e.k == VCALL) {
      notailcall:
 setbc_b(bcptr(fs, &e), 0);
 ins = BCINS_AD(BC_RETM, fs->nactvar, e.u.s.aux - fs->nactvar);
      } else {
 expr_tonextreg(fs, &e);
 ins = BCINS_AD(BC_RET, fs->nactvar, nret+1);
      }
    }
  }
  if (fs->flags & PROTO_CHILD)
    bcemit_AJ(fs, BC_UCLO, 0, 0);
  bcemit_INS(fs, ins);
}
