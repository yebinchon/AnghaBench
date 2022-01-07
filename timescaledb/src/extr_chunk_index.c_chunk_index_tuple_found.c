
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleInfo ;
typedef int ScanTupleResult ;
typedef int ChunkIndexMapping ;


 int SCAN_DONE ;
 int chunk_index_mapping_from_tuple (int *,int * const) ;

__attribute__((used)) static ScanTupleResult
chunk_index_tuple_found(TupleInfo *ti, void *const data)
{
 ChunkIndexMapping *const cim = data;

 chunk_index_mapping_from_tuple(ti, cim);
 return SCAN_DONE;
}
