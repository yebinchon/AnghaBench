
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef int Expr ;


 double INVALID_ESTIMATE ;
 int IS_VALID_ESTIMATE (double) ;
 double clamp_row_est (double) ;
 double estimate_max_spread_expr (int *,int *) ;

double
ts_estimate_group_expr_interval(PlannerInfo *root, Expr *expr, double interval_period)
{
 double max_period;

 if (interval_period <= 0)
  return INVALID_ESTIMATE;

 max_period = estimate_max_spread_expr(root, expr);
 if (!IS_VALID_ESTIMATE(max_period))
  return INVALID_ESTIMATE;

 return clamp_row_est(max_period / interval_period);
}
