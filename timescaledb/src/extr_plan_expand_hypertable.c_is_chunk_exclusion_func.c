
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ funcid; } ;
typedef int Expr ;


 int FuncExpr ;
 scalar_t__ IsA (int *,int ) ;
 TYPE_1__* castNode (int ,int *) ;
 scalar_t__ chunk_exclusion_func ;

__attribute__((used)) static bool
is_chunk_exclusion_func(Expr *node)
{
 if (IsA(node, FuncExpr) && castNode(FuncExpr, node)->funcid == chunk_exclusion_func)
  return 1;

 return 0;
}
