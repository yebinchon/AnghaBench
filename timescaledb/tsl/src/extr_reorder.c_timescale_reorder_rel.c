
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int indisclustered; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ relpersistence; scalar_t__ relkind; scalar_t__ relhasoids; scalar_t__ relisshared; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_index ;


 int CHECK_FOR_INTERRUPTS () ;
 int CheckTableNotInUse (TYPE_2__*,char*) ;
 int ERRCODE_ASSERT_FAILURE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WARNING ;
 int ERROR ;
 int ExclusiveLock ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 scalar_t__ IsSystemRelation (TYPE_2__*) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 scalar_t__ RELKIND_RELATION ;
 int RELOID ;
 scalar_t__ RELPERSISTENCE_PERMANENT ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCacheExists1 (int ,int ) ;
 int WARNING ;
 int check_index_is_clusterable (TYPE_2__*,int ,int,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_class_ownercheck (int ,int ) ;
 int relation_close (TYPE_2__*,int ) ;
 int timescale_rebuild_relation (TYPE_2__*,int ,int,int ,int ,int ) ;
 TYPE_2__* try_relation_open (int ,int ) ;

void
timescale_reorder_rel(Oid tableOid, Oid indexOid, bool verbose, Oid wait_id,
       Oid destination_tablespace, Oid index_tablespace)
{
 Relation OldHeap;
 HeapTuple tuple;
 Form_pg_index indexForm;

 if (!OidIsValid(indexOid))
  elog(ERROR, "Reorder must specify an index.");


 CHECK_FOR_INTERRUPTS();







 OldHeap = try_relation_open(tableOid, ExclusiveLock);


 if (!OldHeap)
 {
  ereport(WARNING, (errcode(ERRCODE_WARNING), errmsg("table disappeared during reorder.")));
  return;
 }






 if (!pg_class_ownercheck(tableOid, GetUserId()))
 {
  relation_close(OldHeap, ExclusiveLock);
  ereport(WARNING, (errcode(ERRCODE_WARNING), errmsg("ownership change during reorder.")));
  return;
 }

 if (IsSystemRelation(OldHeap))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot reorder a system relation.")));

 if (OldHeap->rd_rel->relpersistence != RELPERSISTENCE_PERMANENT)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("can only reorder a permanent table.")));


 if (OldHeap->rd_rel->relisshared)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot reorder a shared catalog")));

 if (OldHeap->rd_rel->relkind != RELKIND_RELATION)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED), errmsg("can only reorder a relation.")));

 if (OldHeap->rd_rel->relhasoids)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot reorder a table with OIDs.")));




 if (!SearchSysCacheExists1(RELOID, ObjectIdGetDatum(indexOid)))
 {
  ereport(WARNING, (errcode(ERRCODE_WARNING), errmsg("index disappeared during reorder")));
  relation_close(OldHeap, ExclusiveLock);
  return;
 }




 tuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(indexOid));
 if (!HeapTupleIsValid(tuple))
 {
  ereport(WARNING, (errcode(ERRCODE_WARNING), errmsg("invalid index heap during reorder")));
  relation_close(OldHeap, ExclusiveLock);
  return;
 }
 indexForm = (Form_pg_index) GETSTRUCT(tuple);





 if (!indexForm->indisclustered)
  ereport(ERROR,
    (errcode(ERRCODE_ASSERT_FAILURE), errmsg("invalid index heap during reorder")));
 ReleaseSysCache(tuple);





 CheckTableNotInUse(OldHeap, "CLUSTER");


 check_index_is_clusterable(OldHeap, indexOid, 1, ExclusiveLock);


 timescale_rebuild_relation(OldHeap,
          indexOid,
          verbose,
          wait_id,
          destination_tablespace,
          index_tablespace);


}
