
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef int Node ;


 int * replace_nestloop_params_mutator (int *,int *) ;

__attribute__((used)) static Node *
replace_nestloop_params(PlannerInfo *root, Node *expr)
{

 return replace_nestloop_params_mutator(expr, root);
}
