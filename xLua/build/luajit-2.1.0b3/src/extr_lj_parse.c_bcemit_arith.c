
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_18__ {scalar_t__ info; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
struct TYPE_21__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_20__ {scalar_t__ nactvar; int freereg; } ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef scalar_t__ BinOpr ;
typedef int BCReg ;


 int BCMAX_B ;
 int BCMAX_C ;
 scalar_t__ BC_ADDNV ;
 scalar_t__ BC_ADDVN ;
 scalar_t__ BC_ADDVV ;
 scalar_t__ BC_POW ;
 scalar_t__ OPR_ADD ;
 scalar_t__ OPR_POW ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VRELOCABLE ;
 scalar_t__ bcemit_ABC (TYPE_3__*,scalar_t__,int ,int ,int ) ;
 int const_num (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ expr_isnumk (TYPE_4__*) ;
 int expr_toanyreg (TYPE_3__*,TYPE_4__*) ;
 int expr_toval (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ foldarith (scalar_t__,TYPE_4__*,TYPE_4__*) ;
 int lua_assert (int) ;

__attribute__((used)) static void bcemit_arith(FuncState *fs, BinOpr opr, ExpDesc *e1, ExpDesc *e2)
{
  BCReg rb, rc, t;
  uint32_t op;
  if (foldarith(opr, e1, e2))
    return;
  if (opr == OPR_POW) {
    op = BC_POW;
    rc = expr_toanyreg(fs, e2);
    rb = expr_toanyreg(fs, e1);
  } else {
    op = opr-OPR_ADD+BC_ADDVV;

    expr_toval(fs, e2);
    if (expr_isnumk(e2) && (rc = const_num(fs, e2)) <= BCMAX_C)
      op -= BC_ADDVV-BC_ADDVN;
    else
      rc = expr_toanyreg(fs, e2);

    lua_assert(expr_isnumk(e1) || e1->k == VNONRELOC);
    expr_toval(fs, e1);

    if (expr_isnumk(e1) && !expr_isnumk(e2) &&
 (t = const_num(fs, e1)) <= BCMAX_B) {
      rb = rc; rc = t; op -= BC_ADDVV-BC_ADDNV;
    } else {
      rb = expr_toanyreg(fs, e1);
    }
  }

  if (e1->k == VNONRELOC && e1->u.s.info >= fs->nactvar) fs->freereg--;
  if (e2->k == VNONRELOC && e2->u.s.info >= fs->nactvar) fs->freereg--;
  e1->u.s.info = bcemit_ABC(fs, op, 0, rb, rc);
  e1->k = VRELOCABLE;
}
