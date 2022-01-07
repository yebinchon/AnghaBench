
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int proc_filter ;
struct TYPE_3__ {int func_fmgr; int rettype; int name; int schema; } ;
typedef TYPE_1__ PartitioningFunc ;
typedef int Oid ;
typedef scalar_t__ DimensionType ;


 int CurrentMemoryContext ;
 scalar_t__ DIMENSION_TYPE_CLOSED ;
 scalar_t__ DIMENSION_TYPE_OPEN ;
 int ERROR ;
 int OidIsValid (int ) ;
 int closed_dim_partitioning_func_filter ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int open_dim_partitioning_func_filter ;
 int ts_lookup_proc_filtered (int ,int ,int *,int ,int *) ;

__attribute__((used)) static void
partitioning_func_set_func_fmgr(PartitioningFunc *pf, Oid argtype, DimensionType dimtype)
{
 Oid funcoid;
 proc_filter filter = dimtype == DIMENSION_TYPE_CLOSED ? closed_dim_partitioning_func_filter :
               open_dim_partitioning_func_filter;

 if (dimtype != DIMENSION_TYPE_CLOSED && dimtype != DIMENSION_TYPE_OPEN)
  elog(ERROR, "invalid dimension type %u", dimtype);

 funcoid = ts_lookup_proc_filtered(pf->schema, pf->name, &pf->rettype, filter, &argtype);

 if (!OidIsValid(funcoid))
 {
  if (dimtype == DIMENSION_TYPE_CLOSED)
   ereport(ERROR,
     (errmsg("invalid partitioning function"),
      errhint("A partitioning function for a closed (space) dimension "
        "must be IMMUTABLE and have the signature (anyelement) -> integer")));
  else
   ereport(ERROR,
     (errmsg("invalid partitioning function"),
      errhint("A partitioning function for a open (time) dimension "
        "must be IMMUTABLE, take one argument, and return a supported time "
        "type")));
 }

 fmgr_info_cxt(funcoid, &pf->func_fmgr, CurrentMemoryContext);
}
