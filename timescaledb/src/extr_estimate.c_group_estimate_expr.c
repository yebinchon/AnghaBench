
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef int OpExpr ;
typedef int Node ;
typedef int FuncExpr ;


 double INVALID_ESTIMATE ;


 double group_estimate_funcexpr (int *,int *,double) ;
 double group_estimate_opexpr (int *,int *,double) ;
 int nodeTag (int *) ;

__attribute__((used)) static double
group_estimate_expr(PlannerInfo *root, Node *expr, double path_rows)
{
 switch (nodeTag(expr))
 {
  case 129:
   return group_estimate_funcexpr(root, (FuncExpr *) expr, path_rows);
  case 128:
   return group_estimate_opexpr(root, (OpExpr *) expr, path_rows);
  default:
   return INVALID_ESTIMATE;
 }
}
