
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paramkind; } ;
typedef int Node ;


 int PARAM_EXTERN ;
 int Param ;
 TYPE_1__* castNode (int ,int *) ;
 int expression_tree_walker (int *,int (*) (int *,void*),void*) ;
 int nodeTag (int *) ;

__attribute__((used)) static bool
is_simple_expr_walker(Node *node, void *context)
{
 if (node == ((void*)0))
  return 0;






 switch (nodeTag(node))
 {




  case 135:
  case 133:
  case 132:
  case 130:
  case 134:
  case 131:
  case 128:
  case 139:
  case 136:
  case 138:
  case 137:
   break;
  case 129:
   if (castNode(Param, node)->paramkind != PARAM_EXTERN)
    return 1;
   break;
  default:
   return 1;
 }
 return expression_tree_walker(node, is_simple_expr_walker, context);
}
