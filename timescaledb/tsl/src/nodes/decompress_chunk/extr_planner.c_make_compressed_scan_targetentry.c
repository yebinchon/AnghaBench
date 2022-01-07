
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Var ;
typedef int TargetEntry ;
struct TYPE_14__ {TYPE_1__* compressed_rel; TYPE_6__* ht_rte; TYPE_6__* compressed_rte; TYPE_6__* chunk_rte; int hypertable_compression_info; } ;
struct TYPE_13__ {int relid; } ;
struct TYPE_12__ {int type_oid; } ;
struct TYPE_11__ {int varattno_map; TYPE_7__* info; } ;
struct TYPE_10__ {scalar_t__ algo_id; } ;
struct TYPE_9__ {int relid; } ;
typedef TYPE_2__ FormData_hypertable_compression ;
typedef int Expr ;
typedef TYPE_3__ DecompressChunkPath ;
typedef int AttrNumber ;


 int Assert (int) ;
 int CUSTOM_TYPE_COMPRESSED_DATA ;
 char* get_attname_compat (int ,int ,int) ;
 int get_attnum (int ,char*) ;
 int get_atttype (int ,int ) ;
 TYPE_2__* get_column_compressioninfo (int ,char*) ;
 int get_compressed_attno (TYPE_7__*,int ) ;
 int get_rte_attribute_is_dropped (TYPE_6__*,int ) ;
 int lappend_int (int ,int ) ;
 int * makeTargetEntry (int *,int,int *,int) ;
 int * makeVar (int ,int ,int ,int,int ,int ) ;
 TYPE_4__* ts_custom_type_cache_get (int ) ;

__attribute__((used)) static TargetEntry *
make_compressed_scan_targetentry(DecompressChunkPath *path, AttrNumber ht_attno, int tle_index)
{
 Var *scan_var;
 char *ht_attname = get_attname_compat(path->info->ht_rte->relid, ht_attno, 0);
 FormData_hypertable_compression *ht_info =
  get_column_compressioninfo(path->info->hypertable_compression_info, ht_attname);
 AttrNumber scan_varattno = get_compressed_attno(path->info, ht_attno);
 AttrNumber chunk_attno = get_attnum(path->info->chunk_rte->relid, ht_attname);

 Assert(!get_rte_attribute_is_dropped(path->info->ht_rte, ht_attno));
 Assert(!get_rte_attribute_is_dropped(path->info->chunk_rte, chunk_attno));
 Assert(!get_rte_attribute_is_dropped(path->info->compressed_rte, scan_varattno));

 if (ht_info->algo_id == 0)
  scan_var = makeVar(path->info->compressed_rel->relid,
         scan_varattno,
         get_atttype(path->info->ht_rte->relid, ht_attno),
         -1,
         0,
         0);
 else
  scan_var = makeVar(path->info->compressed_rel->relid,
         scan_varattno,
         ts_custom_type_cache_get(CUSTOM_TYPE_COMPRESSED_DATA)->type_oid,
         -1,
         0,
         0);
 path->varattno_map = lappend_int(path->varattno_map, chunk_attno);

 return makeTargetEntry((Expr *) scan_var, tle_index, ((void*)0), 0);
}
