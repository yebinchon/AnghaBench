
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int * Form_continuous_agg ;


 int AccessShareLock ;
 int Anum_continuous_agg_pkey_mat_hypertable_id ;
 int BTEqualStrategyNumber ;
 int CONTINUOUS_AGG ;
 int CONTINUOUS_AGG_PKEY ;
 int CONTINUOUS_AGG_TABLE_NAME ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int continuous_agg_tuple_found ;
 int ts_catalog_scan_one (int ,int ,int *,int,int ,int ,int ,int **) ;

__attribute__((used)) static Form_continuous_agg
get_continuous_agg(int32 mat_hypertable_id)
{
 Form_continuous_agg cagg = ((void*)0);
 ScanKeyData scankey[1];
 bool found;

 ScanKeyInit(&scankey[0],
    Anum_continuous_agg_pkey_mat_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(mat_hypertable_id));

 found = ts_catalog_scan_one(CONTINUOUS_AGG,
        CONTINUOUS_AGG_PKEY,
        scankey,
        1,
        continuous_agg_tuple_found,
        AccessShareLock,
        CONTINUOUS_AGG_TABLE_NAME,
        &cagg);

 if (!found)
  return ((void*)0);

 return cagg;
}
