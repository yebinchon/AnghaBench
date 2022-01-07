
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int funcid; } ;
struct TYPE_6__ {double (* group_estimate ) (int *,TYPE_2__*,double) ;} ;
typedef int PlannerInfo ;
typedef TYPE_1__ FuncInfo ;
typedef TYPE_2__ FuncExpr ;


 double INVALID_ESTIMATE ;
 double stub1 (int *,TYPE_2__*,double) ;
 TYPE_1__* ts_func_cache_get_bucketing_func (int ) ;

__attribute__((used)) static double
group_estimate_funcexpr(PlannerInfo *root, FuncExpr *group_estimate_func, double path_rows)
{
 FuncInfo *func_est = ts_func_cache_get_bucketing_func(group_estimate_func->funcid);

 if (((void*)0) != func_est)
  return func_est->group_estimate(root, group_estimate_func, path_rows);
 return INVALID_ESTIMATE;
}
