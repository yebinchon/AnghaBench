
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aggsplit; } ;
typedef int Node ;


 scalar_t__ AGGSPLIT_INITIAL_SERIAL ;
 int Aggref ;
 int ERROR ;
 scalar_t__ IsA (int *,int ) ;
 TYPE_1__* castNode (int ,int *) ;
 int elog (int ,char*) ;
 int expression_tree_walker (int *,int (*) (int *,void*),void*) ;

__attribute__((used)) static bool
ensure_only_partials(Node *node, void *state)
{
 if (node == ((void*)0))
  return 0;

 if (IsA(node, Aggref) && castNode(Aggref, node)->aggsplit != AGGSPLIT_INITIAL_SERIAL)
  elog(ERROR, "Cannot mix partialized and non-partialized aggregates in the same statement");

 return expression_tree_walker((Node *) node, ensure_only_partials, state);
}
