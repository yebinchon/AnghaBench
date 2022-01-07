
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ compressed; } ;
typedef TYPE_2__ TimescaleDBPrivate ;
struct TYPE_11__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_15__ {TYPE_1__ fd; } ;
struct TYPE_14__ {int relid; } ;
struct TYPE_13__ {scalar_t__ reloptkind; int * fdw_private; } ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int Index ;
typedef int Hypertable ;
typedef TYPE_5__ Chunk ;


 scalar_t__ RELOPT_OTHER_MEMBER_REL ;
 scalar_t__ TS_HYPERTABLE_HAS_COMPRESSION (int *) ;
 TYPE_5__* ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_decompress_chunk_generate_paths (int *,TYPE_3__*,int *,TYPE_5__*) ;
 scalar_t__ ts_guc_enable_transparent_decompression ;

void
tsl_set_rel_pathlist_query(PlannerInfo *root, RelOptInfo *rel, Index rti, RangeTblEntry *rte,
         Hypertable *ht)
{
 if (ts_guc_enable_transparent_decompression && ht != ((void*)0) &&
  rel->reloptkind == RELOPT_OTHER_MEMBER_REL && TS_HYPERTABLE_HAS_COMPRESSION(ht) &&
  rel->fdw_private != ((void*)0) && ((TimescaleDBPrivate *) rel->fdw_private)->compressed)
 {
  Chunk *chunk = ts_chunk_get_by_relid(rte->relid, 0, 1);

  if (chunk->fd.compressed_chunk_id > 0)
   ts_decompress_chunk_generate_paths(root, rel, ht, chunk);
 }
}
