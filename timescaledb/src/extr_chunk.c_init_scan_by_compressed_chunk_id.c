
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int index; } ;
struct TYPE_6__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ ScanIterator ;


 int Anum_chunk_compressed_chunk_id_idx_compressed_chunk_id ;
 int BTEqualStrategyNumber ;
 int CHUNK ;
 int CHUNK_COMPRESSED_CHUNK_ID_INDEX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int catalog_get_index (int ,int ,int ) ;
 int ts_catalog_get () ;
 int ts_scan_iterator_scan_key_init (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
init_scan_by_compressed_chunk_id(ScanIterator *iterator, int32 compressed_chunk_id)
{
 iterator->ctx.index =
  catalog_get_index(ts_catalog_get(), CHUNK, CHUNK_COMPRESSED_CHUNK_ID_INDEX);
 ts_scan_iterator_scan_key_init(iterator,
           Anum_chunk_compressed_chunk_id_idx_compressed_chunk_id,
           BTEqualStrategyNumber,
           F_INT4EQ,
           Int32GetDatum(compressed_chunk_id));
}
