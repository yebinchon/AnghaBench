
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * node; } ;
struct TYPE_7__ {int count; TYPE_1__ call; } ;
typedef TYPE_2__ gapfill_walker_context ;
typedef int Node ;


 scalar_t__ IsA (int *,int ) ;
 int WindowFunc ;
 int expression_tree_walker (int *,int (*) (int *,TYPE_2__*),TYPE_2__*) ;

__attribute__((used)) static bool
window_function_walker(Node *node, gapfill_walker_context *context)
{
 if (node == ((void*)0))
  return 0;

 if (IsA(node, WindowFunc))
 {
  context->call.node = node;
  context->count++;
 }

 return expression_tree_walker(node, window_function_walker, context);
}
