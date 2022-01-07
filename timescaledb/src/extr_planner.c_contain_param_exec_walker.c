
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 scalar_t__ IsA (int *,int ) ;
 int Param ;
 int expression_tree_walker (int *,int (*) (int *,void*),void*) ;

__attribute__((used)) static bool
contain_param_exec_walker(Node *node, void *context)
{
 if (node == ((void*)0))
  return 0;

 if (IsA(node, Param))
  return 1;

 return expression_tree_walker(node, contain_param_exec_walker, context);
}
