
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_5__ {int table_id; TYPE_1__ fd; } ;
typedef int Path ;
typedef TYPE_2__ Chunk ;


 int Assert (int) ;
 int * compress_chunk_dml_path_create (int *,int ) ;

Path *
compress_chunk_dml_generate_paths(Path *subpath, Chunk *chunk)
{
 Assert(chunk->fd.compressed_chunk_id > 0);
 return compress_chunk_dml_path_create(subpath, chunk->table_id);
}
