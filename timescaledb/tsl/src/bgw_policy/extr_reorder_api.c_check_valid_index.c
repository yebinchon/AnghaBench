
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ indrelid; } ;
struct TYPE_5__ {int schema_name; } ;
struct TYPE_6__ {scalar_t__ main_table_relid; TYPE_1__ fd; } ;
typedef int Oid ;
typedef int * Name ;
typedef TYPE_2__ Hypertable ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_index ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;

__attribute__((used)) static void
check_valid_index(Hypertable *ht, Name index_name)
{
 Oid index_oid;
 HeapTuple idxtuple;
 Form_pg_index indexForm;

 index_oid = get_relname_relid(NameStr(*index_name),
          get_namespace_oid(NameStr(ht->fd.schema_name), 0));
 idxtuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(index_oid));
 if (!HeapTupleIsValid(idxtuple))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("could not add reorder policy because the provided index is not a valid "
      "relation")));

 indexForm = (Form_pg_index) GETSTRUCT(idxtuple);
 if (indexForm->indrelid != ht->main_table_relid)
  elog(ERROR,
    "could not add reorder policy because the provided index is not a valid index on the "
    "hypertable");
 ReleaseSysCache(idxtuple);
}
