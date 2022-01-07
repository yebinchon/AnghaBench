
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


struct TYPE_21__ {int behavior; int relations; int type; } ;
typedef TYPE_2__ TruncateStmt ;
struct TYPE_25__ {int attnum; } ;
struct TYPE_20__ {int table_name; int schema_name; } ;
struct TYPE_24__ {int main_table_relid; TYPE_1__ fd; } ;
struct TYPE_23__ {int inh; int inhOpt; int relname; int schemaname; } ;
struct TYPE_22__ {TYPE_17__* rd_att; } ;
struct TYPE_19__ {int natts; } ;
typedef int Snapshot ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ RangeVar ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_5__ Hypertable ;
typedef int HeapScanDesc ;
typedef TYPE_6__* Form_pg_attribute ;
typedef int CopyChunkState ;


 int DROP_RESTRICT ;
 int ExecuteTruncate (TYPE_2__*) ;
 int GetLatestSnapshot () ;
 int INH_NO ;
 int * NIL ;
 int NameStr (int ) ;
 int RegisterSnapshot (int ) ;
 int T_TruncateStmt ;
 TYPE_6__* TupleDescAttr (TYPE_17__*,int) ;
 int UnregisterSnapshot (int ) ;
 int * copy_chunk_state_create (TYPE_5__*,TYPE_3__*,int ,int ) ;
 int copy_security_check (TYPE_3__*,int *) ;
 int heap_beginscan (TYPE_3__*,int ,int ,int *) ;
 int heap_close (TYPE_3__*,int ) ;
 int heap_endscan (int ) ;
 TYPE_3__* heap_open (int ,int ) ;
 int * lappend_int (int *,int ) ;
 int list_make1 (TYPE_4__*) ;
 int next_copy_from_table_to_chunks ;
 int timescaledb_CopyFrom (int *,int *,TYPE_5__*) ;

void
timescaledb_move_from_table_to_chunks(Hypertable *ht, LOCKMODE lockmode)
{
 Relation rel;
 CopyChunkState *ccstate;
 HeapScanDesc scandesc;
 Snapshot snapshot;
 List *attnums = NIL;
 List *range_table = NIL;
 RangeVar rv = {
  .schemaname = NameStr(ht->fd.schema_name),
  .relname = NameStr(ht->fd.table_name),



  .inh = 0,

 };

 TruncateStmt stmt = {
  .type = T_TruncateStmt,
  .relations = list_make1(&rv),
  .behavior = DROP_RESTRICT,
 };
 int i;

 rel = heap_open(ht->main_table_relid, lockmode);

 for (i = 0; i < rel->rd_att->natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(rel->rd_att, i);

  attnums = lappend_int(attnums, attr->attnum);
 }

 copy_security_check(rel, attnums);
 snapshot = RegisterSnapshot(GetLatestSnapshot());
 scandesc = heap_beginscan(rel, snapshot, 0, ((void*)0));
 ccstate = copy_chunk_state_create(ht, rel, next_copy_from_table_to_chunks, scandesc);
 timescaledb_CopyFrom(ccstate, range_table, ht);
 heap_endscan(scandesc);
 UnregisterSnapshot(snapshot);
 heap_close(rel, lockmode);

 ExecuteTruncate(&stmt);
}
