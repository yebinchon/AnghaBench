
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleInfo ;
typedef int ScanTupleResult ;
typedef int List ;
typedef int ChunkIndexMapping ;


 int SCAN_CONTINUE ;
 int * chunk_index_mapping_from_tuple (int *,int *) ;
 int * lappend (int *,int *) ;

__attribute__((used)) static ScanTupleResult
chunk_index_collect(TupleInfo *ti, void *data)
{
 List **mappings = data;
 ChunkIndexMapping *cim = chunk_index_mapping_from_tuple(ti, ((void*)0));

 *mappings = lappend(*mappings, cim);

 return SCAN_CONTINUE;
}
