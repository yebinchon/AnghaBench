
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int indisvalid; int indisclustered; int indisready; int indislive; } ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef int IndexValidity ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_index ;


 int Assert (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int INDEXRELID ;

 int IndexRelationId ;

 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_close (int ,int ) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 int heap_open (int ,int ) ;

__attribute__((used)) static bool
ts_indexing_mark_as(Oid index_id, IndexValidity validity)
{
 Relation pg_index;
 HeapTuple indexTuple;
 HeapTuple new_tuple;
 Form_pg_index indexForm;
 bool was_valid;


 pg_index = heap_open(IndexRelationId, RowExclusiveLock);

 indexTuple = SearchSysCacheCopy1(INDEXRELID, ObjectIdGetDatum(index_id));

 if (!HeapTupleIsValid(indexTuple))
  elog(ERROR, "cache lookup failed when marking index %u", index_id);

 new_tuple = heap_copytuple(indexTuple);
 indexForm = (Form_pg_index) GETSTRUCT(new_tuple);

 was_valid = indexForm->indisvalid;


 switch (validity)
 {
  case 128:
   Assert(indexForm->indislive);
   Assert(indexForm->indisready);
   indexForm->indisvalid = 1;
   break;
  case 129:
   indexForm->indisvalid = 0;
   indexForm->indisclustered = 0;
   break;
 }


 CatalogTupleUpdate(pg_index, &indexTuple->t_self, new_tuple);

 heap_close(pg_index, RowExclusiveLock);
 return was_valid;
}
