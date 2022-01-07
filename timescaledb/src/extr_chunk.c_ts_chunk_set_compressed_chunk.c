
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int ScanKeyData ;
typedef TYPE_2__ Chunk ;


 int Anum_chunk_idx_id ;
 int BTEqualStrategyNumber ;
 int CHUNK_ID_INDEX ;
 int CurrentMemoryContext ;
 int F_INT4EQ ;
 int ForwardScanDirection ;
 int INVALID_CHUNK_ID ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ chunk_scan_internal (int ,int *,int,int ,int *,int ,int ,int ,int ) ;
 int chunk_set_compressed_id_in_tuple ;

bool
ts_chunk_set_compressed_chunk(Chunk *chunk, int32 compressed_chunk_id, bool isnull)
{
 int32 compress_id;
 ScanKeyData scankey[1];
 ScanKeyInit(&scankey[0],
    Anum_chunk_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(chunk->fd.id));
 if (isnull)
  compress_id = INVALID_CHUNK_ID;
 else
  compress_id = compressed_chunk_id;
 return chunk_scan_internal(CHUNK_ID_INDEX,
          scankey,
          1,
          chunk_set_compressed_id_in_tuple,
          &compress_id,
          0,
          ForwardScanDirection,
          RowExclusiveLock,
          CurrentMemoryContext) > 0;
}
