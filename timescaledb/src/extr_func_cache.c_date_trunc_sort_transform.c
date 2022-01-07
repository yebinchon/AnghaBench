
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; } ;
typedef TYPE_1__ FuncExpr ;
typedef int Expr ;


 int Const ;
 int IsA (int *,int ) ;
 int Var ;
 scalar_t__ copyObject (int *) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 int lsecond (int ) ;
 int * ts_sort_transform_expr (int ) ;

__attribute__((used)) static Expr *
date_trunc_sort_transform(FuncExpr *func)
{





 Expr *second;

 if (list_length(func->args) != 2 || !IsA(linitial(func->args), Const))
  return (Expr *) func;

 second = ts_sort_transform_expr(lsecond(func->args));

 if (!IsA(second, Var))
  return (Expr *) func;

 return (Expr *) copyObject(second);
}
