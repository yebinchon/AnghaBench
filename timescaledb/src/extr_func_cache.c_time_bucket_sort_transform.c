
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int args; } ;
typedef TYPE_1__ FuncExpr ;
typedef int Expr ;


 int Assert (int) ;
 int IsA (int *,int ) ;
 int Var ;
 scalar_t__ copyObject (int *) ;
 int list_length (int ) ;
 int lsecond (int ) ;
 int time_bucket_has_const_period_and_offset (TYPE_1__*) ;
 int * ts_sort_transform_expr (int ) ;

__attribute__((used)) static Expr *
time_bucket_sort_transform(FuncExpr *func)
{






 Expr *second;

 Assert(list_length(func->args) >= 2);




 if (!time_bucket_has_const_period_and_offset(func))
  return (Expr *) func;

 second = ts_sort_transform_expr(lsecond(func->args));

 if (!IsA(second, Var))
  return (Expr *) func;

 return (Expr *) copyObject(second);
}
