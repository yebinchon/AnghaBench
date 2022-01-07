
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int table_name; int schema_name; } ;
struct TYPE_8__ {int main_table_relid; TYPE_1__ fd; } ;
struct TYPE_7__ {int * indexParams; int tableSpace; int relation; int * idxname; int accessMethod; int type; } ;
typedef int List ;
typedef TYPE_2__ IndexStmt ;
typedef TYPE_3__ Hypertable ;


 int DEFAULT_INDEX_TYPE ;
 int DefineIndexCompat (int ,TYPE_2__*,int ,int,int,int,int) ;
 int InvalidOid ;
 int NameStr (int ) ;
 int T_IndexStmt ;
 int get_rel_tablespace (int ) ;
 int get_tablespace_name (int ) ;
 int makeRangeVar (int ,int ,int ) ;

__attribute__((used)) static void
create_default_index(Hypertable *ht, List *indexelems)
{
 IndexStmt stmt = {
  .type = T_IndexStmt,
  .accessMethod = DEFAULT_INDEX_TYPE,
  .idxname = ((void*)0),
  .relation = makeRangeVar(NameStr(ht->fd.schema_name), NameStr(ht->fd.table_name), 0),
  .tableSpace = get_tablespace_name(get_rel_tablespace(ht->main_table_relid)),
  .indexParams = indexelems,
 };

 DefineIndexCompat(ht->main_table_relid,
       &stmt,
       InvalidOid,
       0,
       0,
       0,
       1);
}
