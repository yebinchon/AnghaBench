
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Var ;
typedef int TargetEntry ;
struct TYPE_9__ {int varattno_map; TYPE_2__* info; } ;
struct TYPE_8__ {int relid; } ;
struct TYPE_7__ {TYPE_1__* compressed_rel; TYPE_3__* compressed_rte; } ;
struct TYPE_6__ {int relid; } ;
typedef int Expr ;
typedef TYPE_4__ DecompressChunkPath ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ INT4OID ;
 scalar_t__ InvalidAttrNumber ;
 int elog (int ,char*,char*) ;
 scalar_t__ get_attnum (int ,char*) ;
 scalar_t__ get_atttype (int ,scalar_t__) ;
 int lappend_int (int ,int) ;
 int * makeTargetEntry (int *,int,int *,int) ;
 int * makeVar (int ,scalar_t__,scalar_t__,int,int ,int ) ;

__attribute__((used)) static TargetEntry *
make_compressed_scan_meta_targetentry(DecompressChunkPath *path, char *column_name, int id,
           int tle_index)
{
 Var *scan_var;
 AttrNumber compressed_attno = get_attnum(path->info->compressed_rte->relid, column_name);
 if (compressed_attno == InvalidAttrNumber)
  elog(ERROR, "lookup failed for column \"%s\"", column_name);






 Assert(get_atttype(path->info->compressed_rte->relid, compressed_attno) == INT4OID);
 scan_var = makeVar(path->info->compressed_rel->relid, compressed_attno, INT4OID, -1, 0, 0);
 path->varattno_map = lappend_int(path->varattno_map, id);

 return makeTargetEntry((Expr *) scan_var, tle_index, ((void*)0), 0);
}
