
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int scanrelid; } ;
struct TYPE_10__ {TYPE_1__ scan; } ;
struct TYPE_9__ {struct TYPE_9__* lefttree; } ;
typedef int Scan ;
typedef TYPE_2__ Plan ;


 int CustomScan ;
 int ERROR ;
 scalar_t__ IsA (TYPE_2__*,int ) ;
 int Result ;
 int Sort ;
 TYPE_5__* castNode (int ,TYPE_2__*) ;
 int elog (int ,char*,int) ;
 int nodeTag (TYPE_2__*) ;

Scan *
ts_chunk_append_get_scan_plan(Plan *plan)
{
 if (plan != ((void*)0) && (IsA(plan, Sort) || IsA(plan, Result)))
  plan = plan->lefttree;

 if (plan == ((void*)0))
  return ((void*)0);

 switch (nodeTag(plan))
 {
  case 142:
  case 141:
  case 140:
  case 138:
  case 137:
  case 136:
  case 135:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   return (Scan *) plan;
   break;
  case 139:
   if (castNode(CustomScan, plan)->scan.scanrelid > 0)
    return (Scan *) plan;
   else
    return ((void*)0);
   break;
  case 134:
   return ((void*)0);
   break;
  default:
   elog(ERROR, "invalid child of chunk append: %u", nodeTag(plan));
   return ((void*)0);
   break;
 }
}
