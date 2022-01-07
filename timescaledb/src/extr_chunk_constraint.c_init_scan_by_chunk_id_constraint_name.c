
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


 int Anum_chunk_constraint_chunk_id_constraint_name_idx_chunk_id ;
 int Anum_chunk_constraint_chunk_id_constraint_name_idx_constraint_name ;
 int BTEqualStrategyNumber ;
 int CHUNK_CONSTRAINT ;
 int CHUNK_CONSTRAINT_CHUNK_ID_CONSTRAINT_NAME_IDX ;
 int CStringGetDatum (char const*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_INT4EQ ;
 int F_NAMEEQ ;
 int Int32GetDatum (int ) ;
 int catalog_get_index (int ,int ,int ) ;
 int namein ;
 int ts_catalog_get () ;
 int ts_scan_iterator_scan_key_init (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
init_scan_by_chunk_id_constraint_name(ScanIterator *iterator, int32 chunk_id,
           const char *constraint_name)
{
 iterator->ctx.index = catalog_get_index(ts_catalog_get(),
           CHUNK_CONSTRAINT,
           CHUNK_CONSTRAINT_CHUNK_ID_CONSTRAINT_NAME_IDX);

 ts_scan_iterator_scan_key_init(iterator,
           Anum_chunk_constraint_chunk_id_constraint_name_idx_chunk_id,
           BTEqualStrategyNumber,
           F_INT4EQ,
           Int32GetDatum(chunk_id));

 ts_scan_iterator_scan_key_init(
  iterator,
  Anum_chunk_constraint_chunk_id_constraint_name_idx_constraint_name,
  BTEqualStrategyNumber,
  F_NAMEEQ,
  DirectFunctionCall1(namein, CStringGetDatum(constraint_name)));
}
