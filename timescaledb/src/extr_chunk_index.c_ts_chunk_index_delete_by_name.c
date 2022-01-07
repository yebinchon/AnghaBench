
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* index_name; int drop_index; char const* schema; } ;
typedef TYPE_1__ ChunkIndexDeleteData ;


 int INVALID_INDEXID ;
 int chunk_index_name_and_schema_filter ;
 int chunk_index_scan_update (int ,int *,int ,int ,int ,TYPE_1__*) ;
 int chunk_index_tuple_delete ;

void
ts_chunk_index_delete_by_name(const char *schema, const char *index_name, bool drop_index)
{
 ChunkIndexDeleteData data = {
  .index_name = index_name,
  .drop_index = drop_index,
  .schema = schema,
 };

 chunk_index_scan_update(INVALID_INDEXID,
       ((void*)0),
       0,
       chunk_index_tuple_delete,
       chunk_index_name_and_schema_filter,
       &data);
}
