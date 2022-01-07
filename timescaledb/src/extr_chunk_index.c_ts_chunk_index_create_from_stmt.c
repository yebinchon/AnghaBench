
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int * idxname; } ;
struct TYPE_6__ {int objectId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__ IndexStmt ;


 TYPE_1__ DefineIndexCompat (int ,TYPE_2__*,int ,int,int,int,int) ;
 int InvalidOid ;
 int * chunk_index_choose_name (char*,char*,int ) ;
 int chunk_index_insert (int ,char*,int ,char*) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;

Oid
ts_chunk_index_create_from_stmt(IndexStmt *stmt, int32 chunk_id, Oid chunkrelid,
        int32 hypertable_id, Oid hypertable_indexrelid)
{
 ObjectAddress idxobj;
 char *hypertable_indexname = get_rel_name(hypertable_indexrelid);

 if (hypertable_indexname == ((void*)0))
  return InvalidOid;

 if (((void*)0) != stmt->idxname)
  stmt->idxname = chunk_index_choose_name(get_rel_name(chunkrelid),
            hypertable_indexname,
            get_rel_namespace(chunkrelid));

 idxobj = DefineIndexCompat(chunkrelid,
          stmt,
          InvalidOid,
          0,
          1,
          0,
          1);

 chunk_index_insert(chunk_id,
        get_rel_name(idxobj.objectId),
        hypertable_id,
        hypertable_indexname);

 return idxobj.objectId;
}
