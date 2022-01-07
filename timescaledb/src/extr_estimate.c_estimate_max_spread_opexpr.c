
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; int opno; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ OpExpr ;
typedef int Expr ;


 int Const ;
 double INVALID_ESTIMATE ;
 scalar_t__ IsA (int *,int ) ;
 double estimate_max_spread_expr (int *,int *) ;
 char* get_opname (int ) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 int * lsecond (int ) ;
 int strlen (char*) ;

__attribute__((used)) static double
estimate_max_spread_opexpr(PlannerInfo *root, OpExpr *opexpr)
{
 char *function_name = get_opname(opexpr->opno);
 Expr *left;
 Expr *right;
 Expr *nonconst;

 if (list_length(opexpr->args) != 2 || strlen(function_name) != 1)
  return INVALID_ESTIMATE;

 left = linitial(opexpr->args);
 right = lsecond(opexpr->args);

 if (IsA(left, Const))
  nonconst = right;
 else if (IsA(right, Const))
  nonconst = left;
 else
  return INVALID_ESTIMATE;


 if (function_name[0] == '-' || function_name[0] == '+')
  return estimate_max_spread_expr(root, nonconst);

 return INVALID_ESTIMATE;
}
