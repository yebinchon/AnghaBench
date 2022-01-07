
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int tablespace_oid; } ;
typedef TYPE_2__ Tablespace ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int reltablespace; } ;
typedef TYPE_3__* Relation ;
typedef int Oid ;


 int CHUNK_INDEX_TABLESPACE_OFFSET ;
 int InvalidOid ;
 TYPE_2__* ts_hypertable_get_tablespace_at_offset_from (int ,int ,int ) ;

__attribute__((used)) static Oid
chunk_index_select_tablespace(int32 hypertable_id, Relation chunkrel)
{
 Tablespace *tspc;
 Oid tablespace_oid = InvalidOid;

 tspc = ts_hypertable_get_tablespace_at_offset_from(hypertable_id,
                chunkrel->rd_rel->reltablespace,
                CHUNK_INDEX_TABLESPACE_OFFSET);

 if (((void*)0) != tspc)
  tablespace_oid = tspc->tablespace_oid;

 return tablespace_oid;
}
