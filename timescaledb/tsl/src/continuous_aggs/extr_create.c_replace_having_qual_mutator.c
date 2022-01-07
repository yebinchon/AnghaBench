
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int found; TYPE_2__* new; TYPE_1__* old; } ;
typedef TYPE_3__ cagg_havingcxt ;
struct TYPE_8__ {scalar_t__ expr; } ;
struct TYPE_7__ {int expr; } ;
typedef int Node ;


 scalar_t__ equal (int *,int ) ;
 int * expression_tree_mutator (int *,int * (*) (int *,TYPE_3__*),TYPE_3__*) ;

__attribute__((used)) static Node *
replace_having_qual_mutator(Node *node, cagg_havingcxt *cxt)
{
 if (node == ((void*)0))
  return ((void*)0);
 if (equal(node, cxt->old->expr))
 {
  cxt->found = 1;
  return (Node *) cxt->new->expr;
 }
 return expression_tree_mutator(node, replace_having_qual_mutator, cxt);
}
