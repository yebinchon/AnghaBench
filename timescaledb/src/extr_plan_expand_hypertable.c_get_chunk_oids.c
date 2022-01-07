
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int appends_ordered; int order_attno; int * nested_oids; } ;
typedef TYPE_2__ TimescaleDBPrivate ;
struct TYPE_21__ {int join_conditions; int restrictions; int * chunk_exclusion_func; } ;
struct TYPE_20__ {TYPE_1__* space; } ;
struct TYPE_19__ {int * fdw_private; } ;
struct TYPE_17__ {int num_dimensions; } ;
typedef TYPE_3__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;
typedef int HypertableRestrictInfo ;
typedef TYPE_4__ Hypertable ;
typedef TYPE_5__ CollectQualCtx ;


 int AccessShareLock ;
 int * find_children_oids (int *,TYPE_4__*,int ) ;
 int * get_explicit_chunk_oids (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ should_order_append (int *,TYPE_3__*,TYPE_4__*,int ,int*,int*) ;
 int ts_hypertable_restrict_info_add (int *,int *,int ) ;
 int * ts_hypertable_restrict_info_create (TYPE_3__*,TYPE_4__*) ;
 int * ts_hypertable_restrict_info_get_chunk_oids_ordered (int *,TYPE_4__*,int ,int **,int) ;

__attribute__((used)) static List *
get_chunk_oids(CollectQualCtx *ctx, PlannerInfo *root, RelOptInfo *rel, Hypertable *ht)
{
 bool reverse;
 int order_attno;

 if (ctx->chunk_exclusion_func == ((void*)0))
 {
  HypertableRestrictInfo *hri = ts_hypertable_restrict_info_create(rel, ht);






  ts_hypertable_restrict_info_add(hri, root, ctx->restrictions);







  if (rel->fdw_private != ((void*)0) &&
   should_order_append(root, rel, ht, ctx->join_conditions, &order_attno, &reverse))
  {
   TimescaleDBPrivate *private = (TimescaleDBPrivate *) rel->fdw_private;
   List **nested_oids = ((void*)0);

    private
   ->appends_ordered = 1;
    private
   ->order_attno = order_attno;





   if (ht->space->num_dimensions > 1)
    nested_oids = &private->nested_oids;

   return ts_hypertable_restrict_info_get_chunk_oids_ordered(hri,
                   ht,
                   AccessShareLock,
                   nested_oids,
                   reverse);
  }
  return find_children_oids(hri, ht, AccessShareLock);
 }
 else
  return get_explicit_chunk_oids(ctx, ht);
}
