
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sort_pathkeys; int query_pathkeys; TYPE_1__* parse; void* distinct_pathkeys; void* window_pathkeys; void* group_pathkeys; } ;
struct TYPE_5__ {int targetList; int sortClause; } ;
typedef TYPE_2__ PlannerInfo ;


 void* NIL ;
 int make_pathkeys_for_sortclauses (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
first_last_qp_callback(PlannerInfo *root, void *extra)
{
 root->group_pathkeys = NIL;
 root->window_pathkeys = NIL;
 root->distinct_pathkeys = NIL;

 root->sort_pathkeys =
  make_pathkeys_for_sortclauses(root, root->parse->sortClause, root->parse->targetList);

 root->query_pathkeys = root->sort_pathkeys;
}
