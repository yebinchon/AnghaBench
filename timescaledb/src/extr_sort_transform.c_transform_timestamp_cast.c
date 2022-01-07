
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; } ;
typedef TYPE_1__ FuncExpr ;
typedef int Expr ;


 int IsA (int *,int ) ;
 int Var ;
 scalar_t__ copyObject (int *) ;
 int linitial (int ) ;
 int list_length (int ) ;
 int * ts_sort_transform_expr (int ) ;

__attribute__((used)) static Expr *
transform_timestamp_cast(FuncExpr *func)
{
 Expr *first;

 if (list_length(func->args) != 1)
  return (Expr *) func;

 first = ts_sort_transform_expr(linitial(func->args));
 if (!IsA(first, Var))
  return (Expr *) func;

 return (Expr *) copyObject(first);
}
