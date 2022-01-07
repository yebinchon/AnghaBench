
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int schema_name; int table_name; } ;
typedef TYPE_1__ TableInfoDef ;
struct TYPE_8__ {scalar_t__ length; int * names; } ;
typedef TYPE_2__ TableIndexDef ;
struct TYPE_9__ {scalar_t__ serial_relid; int schema_name; int name; scalar_t__* index_ids; scalar_t__ id; } ;
typedef scalar_t__ Size ;
typedef int RangeVar ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ CatalogTableInfo ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int NoLock ;
 scalar_t__ RangeVarGetRelid (int *,int ,int) ;
 scalar_t__ _MAX_TABLE_INDEXES ;
 int elog (int ,char*,int ,...) ;
 scalar_t__ get_namespace_oid (int ,int) ;
 scalar_t__ get_relname_relid (int ,scalar_t__) ;
 int * makeRangeVarFromNameList (int ) ;
 int stringToQualifiedNameList (char const*) ;

void
ts_catalog_table_info_init(CatalogTableInfo *tables_info, int max_tables,
         const TableInfoDef *table_ary, const TableIndexDef *index_ary,
         const char **serial_id_ary)
{
 int i;

 for (i = 0; i < max_tables; i++)
 {
  Oid schema_oid;
  Oid id;
  const char *sequence_name;
  Size number_indexes, j;

  schema_oid = get_namespace_oid(table_ary[i].schema_name, 0);
  id = get_relname_relid(table_ary[i].table_name, schema_oid);

  if (id == InvalidOid)
   elog(ERROR,
     "OID lookup failed for table \"%s.%s\"",
     table_ary[i].schema_name,
     table_ary[i].table_name);

  tables_info[i].id = id;

  number_indexes = index_ary[i].length;
  Assert(number_indexes <= _MAX_TABLE_INDEXES);

  for (j = 0; j < number_indexes; j++)
  {
   id = get_relname_relid(index_ary[i].names[j], schema_oid);

   if (id == InvalidOid)
    elog(ERROR, "OID lookup failed for table index \"%s\"", index_ary[i].names[j]);

   tables_info[i].index_ids[j] = id;
  }

  tables_info[i].name = table_ary[i].table_name;
  tables_info[i].schema_name = table_ary[i].schema_name;
  sequence_name = serial_id_ary[i];

  if (((void*)0) != sequence_name)
  {
   RangeVar *sequence;

   sequence = makeRangeVarFromNameList(stringToQualifiedNameList(sequence_name));
   tables_info[i].serial_relid = RangeVarGetRelid(sequence, NoLock, 0);
  }
  else
   tables_info[i].serial_relid = InvalidOid;
 }
}
