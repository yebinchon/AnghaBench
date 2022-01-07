
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


 int Anum_chunk_constraint_chunk_id_dimension_slice_id_idx_chunk_id ;
 int BTEqualStrategyNumber ;
 int CHUNK_CONSTRAINT ;
 int CHUNK_CONSTRAINT_CHUNK_ID_DIMENSION_SLICE_ID_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int catalog_get_index (int ,int ,int ) ;
 int ts_catalog_get () ;
 int ts_scan_iterator_scan_key_init (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
init_scan_by_chunk_id(ScanIterator *iterator, int32 chunk_id)
{
 iterator->ctx.index = catalog_get_index(ts_catalog_get(),
           CHUNK_CONSTRAINT,
           CHUNK_CONSTRAINT_CHUNK_ID_DIMENSION_SLICE_ID_IDX);
 ts_scan_iterator_scan_key_init(iterator,
           Anum_chunk_constraint_chunk_id_dimension_slice_id_idx_chunk_id,
           BTEqualStrategyNumber,
           F_INT4EQ,
           Int32GetDatum(chunk_id));
}
