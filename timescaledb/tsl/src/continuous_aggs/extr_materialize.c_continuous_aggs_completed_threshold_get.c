
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int ScanKeyData ;


 int AccessShareLock ;
 int Anum_continuous_aggs_completed_threshold_pkey_materialization_id ;
 int BTEqualStrategyNumber ;
 int CONTINUOUS_AGGS_COMPLETED_THRESHOLD ;
 int CONTINUOUS_AGGS_COMPLETED_THRESHOLD_PKEY ;
 int CONTINUOUS_AGGS_COMPLETED_THRESHOLD_TABLE_NAME ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int PG_INT64_MIN ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int completed_threshold_tuple_found ;
 int ts_catalog_scan_one (int ,int ,int *,int,int ,int ,int ,int *) ;

__attribute__((used)) static int64
continuous_aggs_completed_threshold_get(int32 materialization_id)
{
 int64 threshold = 0;
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_continuous_aggs_completed_threshold_pkey_materialization_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(materialization_id));

 if (!ts_catalog_scan_one(CONTINUOUS_AGGS_COMPLETED_THRESHOLD ,
        CONTINUOUS_AGGS_COMPLETED_THRESHOLD_PKEY ,
        scankey ,
        1 ,
        completed_threshold_tuple_found ,
        AccessShareLock ,
        CONTINUOUS_AGGS_COMPLETED_THRESHOLD_TABLE_NAME ,
        &threshold ))
  return PG_INT64_MIN;

 return threshold;
}
