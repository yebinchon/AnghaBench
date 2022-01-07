
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ paramkind; } ;
typedef int Node ;


 scalar_t__ IsA (int *,int ) ;
 scalar_t__ PARAM_EXEC ;
 int Param ;
 TYPE_1__* castNode (int ,int *) ;
 int expression_tree_walker (int *,int (*) (int *,void*),void*) ;

__attribute__((used)) static bool
contain_param_exec_walker(Node *node, void *context)
{
 if (node == ((void*)0))
  return 0;

 if (IsA(node, Param))
  return castNode(Param, node)->paramkind == PARAM_EXEC;

 return expression_tree_walker(node, contain_param_exec_walker, context);
}
