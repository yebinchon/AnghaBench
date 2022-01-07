
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int parallel_aware; int parallel_workers; int parallel_safe; int pathtarget; int param_info; int pathkeys; int parent; int total_cost; int startup_cost; int rows; int pathtype; } ;
struct TYPE_8__ {TYPE_2__ path; int * methods; int custom_paths; scalar_t__ flags; } ;
struct TYPE_10__ {TYPE_1__ cpath; } ;
typedef int PlannerInfo ;
typedef TYPE_2__ Path ;
typedef int Hypertable ;
typedef TYPE_3__ ConstraintAwareAppendPath ;


 int ERROR ;

 int T_CustomPath ;
 int T_CustomScan ;

 int constraint_aware_append_path_methods ;
 int elog (int ,char*,int) ;
 int list_make1 (TYPE_2__*) ;
 scalar_t__ newNode (int,int ) ;
 int nodeTag (TYPE_2__*) ;

Path *
ts_constraint_aware_append_path_create(PlannerInfo *root, Hypertable *ht, Path *subpath)
{
 ConstraintAwareAppendPath *path;

 path = (ConstraintAwareAppendPath *) newNode(sizeof(ConstraintAwareAppendPath), T_CustomPath);
 path->cpath.path.pathtype = T_CustomScan;
 path->cpath.path.rows = subpath->rows;
 path->cpath.path.startup_cost = subpath->startup_cost;
 path->cpath.path.total_cost = subpath->total_cost;
 path->cpath.path.parent = subpath->parent;
 path->cpath.path.pathkeys = subpath->pathkeys;
 path->cpath.path.param_info = subpath->param_info;
 path->cpath.path.pathtarget = subpath->pathtarget;

 path->cpath.path.parallel_aware = 0;
 path->cpath.path.parallel_safe = subpath->parallel_safe;
 path->cpath.path.parallel_workers = subpath->parallel_workers;
 path->cpath.flags = 0;
 path->cpath.custom_paths = list_make1(subpath);
 path->cpath.methods = &constraint_aware_append_path_methods;




 switch (nodeTag(subpath))
 {
  case 129:
  case 128:
   break;
  default:
   elog(ERROR, "invalid child of constraint-aware append: %u", nodeTag(subpath));
   break;
 }

 return &path->cpath.path;
}
