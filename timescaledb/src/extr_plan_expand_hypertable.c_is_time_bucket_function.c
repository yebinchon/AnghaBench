
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int funcid; } ;
typedef int Expr ;


 int FuncExpr ;
 scalar_t__ IsA (int *,int ) ;
 int NAMEDATALEN ;
 TYPE_1__* castNode (int ,int *) ;
 int get_func_name (int ) ;
 scalar_t__ strncmp (int ,char*,int ) ;

__attribute__((used)) static bool
is_time_bucket_function(Expr *node)
{
 if (IsA(node, FuncExpr) &&
  strncmp(get_func_name(castNode(FuncExpr, node)->funcid), "time_bucket", NAMEDATALEN) == 0)
  return 1;

 return 0;
}
