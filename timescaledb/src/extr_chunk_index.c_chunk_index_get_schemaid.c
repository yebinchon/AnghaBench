
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int schema_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {int chunk_id; } ;
typedef int Oid ;
typedef TYPE_2__* Form_chunk_index ;
typedef TYPE_3__ Chunk ;


 int NameStr (int ) ;
 int get_namespace_oid (int ,int) ;
 TYPE_3__* ts_chunk_get_by_id (int ,int ,int) ;

__attribute__((used)) static inline Oid
chunk_index_get_schemaid(Form_chunk_index chunk_index, bool missing_ok)
{
 Chunk *chunk = ts_chunk_get_by_id(chunk_index->chunk_id, 0, 1);

 return get_namespace_oid(NameStr(chunk->fd.schema_name), missing_ok);
}
