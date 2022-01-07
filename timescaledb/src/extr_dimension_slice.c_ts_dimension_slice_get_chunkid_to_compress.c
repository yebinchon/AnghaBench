
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int StrategyNumber ;


 int INVALID_CHUNK_ID ;
 int dimension_slice_check_is_chunk_uncompressed_tuple_found ;
 int dimension_slice_scan_with_strategies (int ,int ,int ,int ,int ,int *,int ,int) ;

int32
ts_dimension_slice_get_chunkid_to_compress(int32 dimension_id, StrategyNumber start_strategy,
             int64 start_value, StrategyNumber end_strategy,
             int64 end_value)
{
 int32 chunk_id_ret = INVALID_CHUNK_ID;
 dimension_slice_scan_with_strategies(dimension_id,
           start_strategy,
           start_value,
           end_strategy,
           end_value,
           &chunk_id_ret,
           dimension_slice_check_is_chunk_uncompressed_tuple_found,
           -1);

 return chunk_id_ret;
}
