
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Var ;
typedef int PlannerInfo ;
typedef int OpExpr ;
typedef int Expr ;


 double INVALID_ESTIMATE ;


 double estimate_max_spread_opexpr (int *,int *) ;
 double estimate_max_spread_var (int *,int *) ;
 int nodeTag (int *) ;

__attribute__((used)) static double
estimate_max_spread_expr(PlannerInfo *root, Expr *expr)
{
 switch (nodeTag(expr))
 {
  case 128:
   return estimate_max_spread_var(root, (Var *) expr);
  case 129:
   return estimate_max_spread_opexpr(root, (OpExpr *) expr);
  default:
   return INVALID_ESTIMATE;
 }
}
