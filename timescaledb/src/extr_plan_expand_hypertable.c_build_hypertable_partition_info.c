
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* space; } ;
struct TYPE_14__ {int partnatts; int strategy; } ;
struct TYPE_13__ {int parse; } ;
struct TYPE_12__ {int nparts; int boundinfo; int ** nullable_partexprs; int relid; int partexprs; TYPE_4__* part_scheme; } ;
struct TYPE_11__ {int num_dimensions; } ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PlannerInfo ;
typedef int PartitionSchemeData ;
typedef TYPE_4__* PartitionScheme ;
typedef int PartitionBoundInfoData ;
typedef int List ;
typedef TYPE_5__ Hypertable ;


 int PARTITION_STRATEGY_MULTIDIM ;
 int get_hypertable_partexprs (TYPE_5__*,int ,int ) ;
 int palloc (int) ;
 TYPE_4__* palloc0 (int) ;

__attribute__((used)) static void
build_hypertable_partition_info(Hypertable *ht, PlannerInfo *root, RelOptInfo *hyper_rel,
        int nparts)
{
 PartitionScheme part_scheme = palloc0(sizeof(PartitionSchemeData));


 part_scheme->partnatts = ht->space->num_dimensions;
 part_scheme->strategy = PARTITION_STRATEGY_MULTIDIM;
 hyper_rel->nparts = nparts;
 hyper_rel->part_scheme = part_scheme;
 hyper_rel->partexprs = get_hypertable_partexprs(ht, root->parse, hyper_rel->relid);
 hyper_rel->nullable_partexprs = (List **) palloc0(sizeof(List *) * part_scheme->partnatts);
 hyper_rel->boundinfo = palloc(sizeof(PartitionBoundInfoData));
}
