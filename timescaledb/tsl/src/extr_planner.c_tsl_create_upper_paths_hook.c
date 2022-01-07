
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UpperRelationKind ;
struct TYPE_7__ {int pathlist; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int CustomPath ;
 scalar_t__ IsA (int ,int ) ;
 scalar_t__ UPPERREL_GROUP_AGG ;
 scalar_t__ UPPERREL_WINDOW ;
 int gapfill_adjust_window_targetlist (int *,TYPE_1__*,TYPE_1__*) ;
 int linitial (int ) ;
 int plan_add_gapfill (int *,TYPE_1__*) ;

void
tsl_create_upper_paths_hook(PlannerInfo *root, UpperRelationKind stage, RelOptInfo *input_rel,
       RelOptInfo *output_rel)
{
 if (UPPERREL_GROUP_AGG == stage)
  plan_add_gapfill(root, output_rel);
 if (UPPERREL_WINDOW == stage)
 {
  if (IsA(linitial(input_rel->pathlist), CustomPath))
   gapfill_adjust_window_targetlist(root, input_rel, output_rel);
 }
}
