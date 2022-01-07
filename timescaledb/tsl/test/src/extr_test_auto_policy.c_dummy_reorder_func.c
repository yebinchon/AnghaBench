
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* Oid ;


 int InvalidOid ;
 void* chunk_oid ;
 void* index_oid ;
 int reorder_chunk (void*,void*,int,void*,int ,int ) ;

__attribute__((used)) static void
dummy_reorder_func(Oid tableOid, Oid indexOid, bool verbose, Oid wait_id,
       Oid destination_tablespace, Oid index_tablespace)
{
 chunk_oid = tableOid;
 index_oid = indexOid;
 reorder_chunk(tableOid, indexOid, 1, wait_id, InvalidOid, InvalidOid);
}
