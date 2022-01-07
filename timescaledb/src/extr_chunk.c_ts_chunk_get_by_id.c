
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int int16 ;
typedef int ScanKeyData ;
typedef int Chunk ;


 int Anum_chunk_idx_id ;
 int BTEqualStrategyNumber ;
 int CHUNK_ID_INDEX ;
 int CurrentMemoryContext ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * chunk_scan_find (int ,int *,int,int ,int ,int) ;

Chunk *
ts_chunk_get_by_id(int32 id, int16 num_constraints, bool fail_if_not_found)
{
 ScanKeyData scankey[1];




 ScanKeyInit(&scankey[0], Anum_chunk_idx_id, BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(id));

 return chunk_scan_find(CHUNK_ID_INDEX,
         scankey,
         1,
         num_constraints,
         CurrentMemoryContext,
         fail_if_not_found);
}
