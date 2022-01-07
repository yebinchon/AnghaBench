
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_20__ {int schema_name; int table_name; } ;
struct TYPE_26__ {TYPE_2__ fd; } ;
struct TYPE_25__ {char* tablespacename; int options; int inhRelations; int relation; int type; } ;
struct TYPE_19__ {int table_name; int schema_name; } ;
struct TYPE_24__ {int main_table_relid; TYPE_1__ fd; } ;
struct TYPE_23__ {scalar_t__ objectId; } ;
struct TYPE_22__ {TYPE_3__* rd_rel; } ;
struct TYPE_21__ {scalar_t__ relowner; } ;
struct TYPE_18__ {scalar_t__ owner_uid; } ;
typedef TYPE_4__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_5__ ObjectAddress ;
typedef TYPE_6__ Hypertable ;
typedef TYPE_7__ CreateStmt ;
typedef TYPE_8__ Chunk ;


 int AccessShareLock ;
 TYPE_5__ DefineRelation (TYPE_7__*,int ,scalar_t__,int *,int *) ;
 int GetUserIdAndSecContext (scalar_t__*,int*) ;
 int INTERNAL_SCHEMA_NAME ;
 int NameStr (int ) ;
 int RELKIND_RELATION ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SetUserIdAndSecContext (scalar_t__,int) ;
 int T_CreateStmt ;
 int create_toast_table (TYPE_7__*,scalar_t__) ;
 int get_reloptions (int ) ;
 int heap_close (TYPE_4__*,int ) ;
 TYPE_4__* heap_open (int ,int ) ;
 int list_make1 (int ) ;
 int makeRangeVar (int ,int ,int ) ;
 scalar_t__ namestrcmp (int *,int ) ;
 int set_attoptions (TYPE_4__*,scalar_t__) ;
 TYPE_11__* ts_catalog_database_info_get () ;

Oid
ts_chunk_create_table(Chunk *chunk, Hypertable *ht, char *tablespacename)
{
 Relation rel;
 ObjectAddress objaddr;
 int sec_ctx;
 CreateStmt stmt = {
  .type = T_CreateStmt,
  .relation = makeRangeVar(NameStr(chunk->fd.schema_name), NameStr(chunk->fd.table_name), 0),
  .inhRelations =
   list_make1(makeRangeVar(NameStr(ht->fd.schema_name), NameStr(ht->fd.table_name), 0)),
  .tablespacename = tablespacename,
  .options = get_reloptions(ht->main_table_relid),
 };
 Oid uid, saved_uid;

 rel = heap_open(ht->main_table_relid, AccessShareLock);





 if (namestrcmp(&chunk->fd.schema_name, INTERNAL_SCHEMA_NAME) == 0)
  uid = ts_catalog_database_info_get()->owner_uid;
 else
  uid = rel->rd_rel->relowner;

 GetUserIdAndSecContext(&saved_uid, &sec_ctx);

 if (uid != saved_uid)
  SetUserIdAndSecContext(uid, sec_ctx | SECURITY_LOCAL_USERID_CHANGE);

 objaddr = DefineRelation(&stmt,
        RELKIND_RELATION,
        rel->rd_rel->relowner,
        ((void*)0)

        ,
        ((void*)0)

 );





 create_toast_table(&stmt, objaddr.objectId);

 if (uid != saved_uid)
  SetUserIdAndSecContext(saved_uid, sec_ctx);

 set_attoptions(rel, objaddr.objectId);

 heap_close(rel, AccessShareLock);

 return objaddr.objectId;
}
