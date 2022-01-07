
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;
typedef int ExpDesc ;
typedef scalar_t__ BinOpr ;


 scalar_t__ OPR_AND ;
 scalar_t__ OPR_CONCAT ;
 scalar_t__ OPR_EQ ;
 scalar_t__ OPR_NE ;
 scalar_t__ OPR_OR ;
 int bcemit_branch_f (int *,int *) ;
 int bcemit_branch_t (int *,int *) ;
 int expr_isk_nojump (int *) ;
 int expr_isnumk_nojump (int *) ;
 int expr_toanyreg (int *,int *) ;
 int expr_tonextreg (int *,int *) ;

__attribute__((used)) static void bcemit_binop_left(FuncState *fs, BinOpr op, ExpDesc *e)
{
  if (op == OPR_AND) {
    bcemit_branch_t(fs, e);
  } else if (op == OPR_OR) {
    bcemit_branch_f(fs, e);
  } else if (op == OPR_CONCAT) {
    expr_tonextreg(fs, e);
  } else if (op == OPR_EQ || op == OPR_NE) {
    if (!expr_isk_nojump(e)) expr_toanyreg(fs, e);
  } else {
    if (!expr_isnumk_nojump(e)) expr_toanyreg(fs, e);
  }
}
