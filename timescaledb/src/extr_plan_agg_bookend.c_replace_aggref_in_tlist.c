
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * mm_path; } ;
struct TYPE_5__ {TYPE_1__* pathtarget; } ;
struct TYPE_4__ {int * exprs; } ;
typedef TYPE_2__ Path ;
typedef int Node ;
typedef TYPE_3__ MutatorContext ;
typedef int MinMaxAggPath ;
typedef int List ;


 scalar_t__ mutate_aggref_node (int *,void*) ;

void
replace_aggref_in_tlist(MinMaxAggPath *minmaxagg_path)
{
 MutatorContext context;

 context.mm_path = minmaxagg_path;

 ((Path *) minmaxagg_path)->pathtarget->exprs =
  (List *) mutate_aggref_node((Node *) ((Path *) minmaxagg_path)->pathtarget->exprs,
         (void *) &context);
}
