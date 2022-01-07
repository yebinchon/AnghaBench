
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_16__ {scalar_t__ type_oid; } ;
struct TYPE_15__ {scalar_t__ attnum; scalar_t__ atttypid; int attstattarget; int attname; } ;
struct TYPE_14__ {int t_self; } ;
struct TYPE_13__ {int natts; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_attribute ;


 scalar_t__ AttributeRelationId ;
 int CUSTOM_TYPE_COMPRESSED_DATA ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,scalar_t__) ;
 int NameStr (int ) ;
 int RelationClose (int ) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopyAttName (scalar_t__,int ) ;
 int ShareUpdateExclusiveLock ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int heap_freetuple (TYPE_2__*) ;
 int relation_open (scalar_t__,int ) ;
 TYPE_4__* ts_custom_type_cache_get (int ) ;

__attribute__((used)) static void
set_statistics_on_compressed_table(Oid compressed_table_id)
{
 Relation table_rel = relation_open(compressed_table_id, ShareUpdateExclusiveLock);
 Relation attrelation = relation_open(AttributeRelationId, RowExclusiveLock);
 TupleDesc table_desc = RelationGetDescr(table_rel);
 Oid compressed_data_type = ts_custom_type_cache_get(CUSTOM_TYPE_COMPRESSED_DATA)->type_oid;
 for (int i = 0; i < table_desc->natts; i++)
 {
  Form_pg_attribute attrtuple;
  HeapTuple tuple;
  Form_pg_attribute col_attr = TupleDescAttr(table_desc, i);


  if (col_attr->attnum <= 0)
   continue;

  tuple = SearchSysCacheCopyAttName(compressed_table_id, NameStr(col_attr->attname));

  if (!HeapTupleIsValid(tuple))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column \"%s\" of compressed table \"%s\" does not exist",
       NameStr(col_attr->attname),
       RelationGetRelationName(table_rel))));

  attrtuple = (Form_pg_attribute) GETSTRUCT(tuple);






  if (col_attr->atttypid == compressed_data_type)
   attrtuple->attstattarget = 0;
  else
   attrtuple->attstattarget = 1000;

  CatalogTupleUpdate(attrelation, &tuple->t_self, tuple);

  InvokeObjectPostAlterHook(RelationRelationId, compressed_table_id, attrtuple->attnum);
  heap_freetuple(tuple);
 }

 RelationClose(attrelation);
 RelationClose(table_rel);
}
