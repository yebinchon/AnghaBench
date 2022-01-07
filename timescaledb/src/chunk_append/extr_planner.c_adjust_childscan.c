
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pathkeys; TYPE_1__* parent; } ;
struct TYPE_11__ {int * targetlist; } ;
struct TYPE_10__ {int relids; int relid; } ;
typedef int PlannerInfo ;
typedef TYPE_2__ Plan ;
typedef TYPE_3__ Path ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int AttrNumber ;
typedef int AppendRelInfo ;


 scalar_t__ adjust_appendrel_attrs_compat (int *,int *,int *) ;
 scalar_t__ make_sort (TYPE_2__*,int,int *,int *,int *,int*) ;
 int pathkeys_contained_in (int *,int ) ;
 int * ts_get_appendrelinfo (int *,int ,int) ;
 TYPE_2__* ts_prepare_sort_from_pathkeys (TYPE_2__*,int *,int ,int *,int,int*,int **,int **,int **,int**) ;

__attribute__((used)) static Plan *
adjust_childscan(PlannerInfo *root, Plan *plan, Path *path, List *pathkeys, List *tlist,
     AttrNumber *sortColIdx)
{
 AppendRelInfo *appinfo = ts_get_appendrelinfo(root, path->parent->relid, 0);
 int childSortCols;
 Oid *sortOperators;
 Oid *collations;
 bool *nullsFirst;
 AttrNumber *childColIdx;


 plan->targetlist = (List *) adjust_appendrel_attrs_compat(root, (Node *) tlist, appinfo);


 plan = ts_prepare_sort_from_pathkeys(plan,
           pathkeys,
           path->parent->relids,
           sortColIdx,
           1,
           &childSortCols,
           &childColIdx,
           &sortOperators,
           &collations,
           &nullsFirst);


 if (!pathkeys_contained_in(pathkeys, path->pathkeys))
 {
  plan = (Plan *)
   make_sort(plan, childSortCols, childColIdx, sortOperators, collations, nullsFirst);
 }
 return plan;
}
