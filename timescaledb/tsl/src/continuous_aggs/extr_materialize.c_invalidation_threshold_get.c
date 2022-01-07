
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int ScanKeyData ;


 int AccessShareLock ;
 int Anum_continuous_aggs_invalidation_threshold_pkey_hypertable_id ;
 int BTEqualStrategyNumber ;
 int CONTINUOUS_AGGS_INVALIDATION_THRESHOLD ;
 int CONTINUOUS_AGGS_INVALIDATION_THRESHOLD_PKEY ;
 int CONTINUOUS_AGGS_INVALIDATION_THRESHOLD_TABLE_NAME ;
 int ERROR ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int invalidation_threshold_tuple_found ;
 int ts_catalog_scan_one (int ,int ,int *,int,int ,int ,int ,int *) ;

int64
invalidation_threshold_get(int32 hypertable_id)
{
 int64 threshold = 0;
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_continuous_aggs_invalidation_threshold_pkey_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 if (!ts_catalog_scan_one(CONTINUOUS_AGGS_INVALIDATION_THRESHOLD ,
        CONTINUOUS_AGGS_INVALIDATION_THRESHOLD_PKEY ,
        scankey ,
        1 ,
        invalidation_threshold_tuple_found ,
        AccessShareLock ,
        CONTINUOUS_AGGS_INVALIDATION_THRESHOLD_TABLE_NAME ,
        &threshold ))
  elog(ERROR, "could not find invalidation threshold for hypertable %d", hypertable_id);

 return threshold;
}
