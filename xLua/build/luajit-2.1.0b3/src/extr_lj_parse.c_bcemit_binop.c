
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int info; } ;
struct TYPE_16__ {TYPE_1__ s; } ;
struct TYPE_17__ {scalar_t__ t; scalar_t__ f; scalar_t__ k; TYPE_2__ u; } ;
typedef int FuncState ;
typedef TYPE_3__ ExpDesc ;
typedef scalar_t__ BinOpr ;


 scalar_t__ BC_CAT ;
 scalar_t__ NO_JMP ;
 scalar_t__ OPR_AND ;
 scalar_t__ OPR_CONCAT ;
 scalar_t__ OPR_EQ ;
 scalar_t__ OPR_GE ;
 scalar_t__ OPR_GT ;
 scalar_t__ OPR_LE ;
 scalar_t__ OPR_LT ;
 scalar_t__ OPR_NE ;
 scalar_t__ OPR_OR ;
 scalar_t__ OPR_POW ;
 scalar_t__ VRELOCABLE ;
 int bc_b (int ) ;
 scalar_t__ bc_op (int ) ;
 int bcemit_ABC (int *,scalar_t__,int ,int,int) ;
 int bcemit_arith (int *,scalar_t__,TYPE_3__*,TYPE_3__*) ;
 int bcemit_comp (int *,scalar_t__,TYPE_3__*,TYPE_3__*) ;
 int * bcptr (int *,TYPE_3__*) ;
 int expr_discharge (int *,TYPE_3__*) ;
 int expr_free (int *,TYPE_3__*) ;
 int expr_tonextreg (int *,TYPE_3__*) ;
 int expr_toval (int *,TYPE_3__*) ;
 int jmp_append (int *,scalar_t__*,scalar_t__) ;
 int lua_assert (int) ;
 int setbc_b (int *,int) ;

__attribute__((used)) static void bcemit_binop(FuncState *fs, BinOpr op, ExpDesc *e1, ExpDesc *e2)
{
  if (op <= OPR_POW) {
    bcemit_arith(fs, op, e1, e2);
  } else if (op == OPR_AND) {
    lua_assert(e1->t == NO_JMP);
    expr_discharge(fs, e2);
    jmp_append(fs, &e2->f, e1->f);
    *e1 = *e2;
  } else if (op == OPR_OR) {
    lua_assert(e1->f == NO_JMP);
    expr_discharge(fs, e2);
    jmp_append(fs, &e2->t, e1->t);
    *e1 = *e2;
  } else if (op == OPR_CONCAT) {
    expr_toval(fs, e2);
    if (e2->k == VRELOCABLE && bc_op(*bcptr(fs, e2)) == BC_CAT) {
      lua_assert(e1->u.s.info == bc_b(*bcptr(fs, e2))-1);
      expr_free(fs, e1);
      setbc_b(bcptr(fs, e2), e1->u.s.info);
      e1->u.s.info = e2->u.s.info;
    } else {
      expr_tonextreg(fs, e2);
      expr_free(fs, e2);
      expr_free(fs, e1);
      e1->u.s.info = bcemit_ABC(fs, BC_CAT, 0, e1->u.s.info, e2->u.s.info);
    }
    e1->k = VRELOCABLE;
  } else {
    lua_assert(op == OPR_NE || op == OPR_EQ ||
        op == OPR_LT || op == OPR_GE || op == OPR_LE || op == OPR_GT);
    bcemit_comp(fs, op, e1, e2);
  }
}
