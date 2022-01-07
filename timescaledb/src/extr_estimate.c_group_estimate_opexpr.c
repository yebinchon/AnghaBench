
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opno; int args; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ OpExpr ;
typedef int Node ;


 int Const ;
 double INVALID_ESTIMATE ;
 scalar_t__ IS_VALID_ESTIMATE (double) ;
 scalar_t__ IsA (int *,int ) ;
 int * eval_const_expressions (int *,int ) ;
 double group_estimate_expr (int *,int *,double) ;
 double group_estimate_integer_division (int *,int ,int *,int *) ;
 int linitial (int ) ;
 int list_length (int ) ;
 int lsecond (int ) ;

__attribute__((used)) static double
group_estimate_opexpr(PlannerInfo *root, OpExpr *opexpr, double path_rows)
{
 Node *first;
 Node *second;
 double estimate;

 if (list_length(opexpr->args) != 2)
  return INVALID_ESTIMATE;

 first = eval_const_expressions(root, linitial(opexpr->args));
 second = eval_const_expressions(root, lsecond(opexpr->args));

 estimate = group_estimate_integer_division(root, opexpr->opno, first, second);
 if (IS_VALID_ESTIMATE(estimate))
  return estimate;

 if (IsA(first, Const))
  return group_estimate_expr(root, second, path_rows);
 if (IsA(second, Const))
  return group_estimate_expr(root, first, path_rows);
 return INVALID_ESTIMATE;
}
