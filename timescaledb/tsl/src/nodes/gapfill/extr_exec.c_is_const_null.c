
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ constisnull; } ;
typedef int Expr ;


 int Const ;
 scalar_t__ IsA (int *,int ) ;
 TYPE_1__* castNode (int ,int *) ;

__attribute__((used)) static bool
is_const_null(Expr *expr)
{
 return IsA(expr, Const) && castNode(Const, expr)->constisnull;
}
