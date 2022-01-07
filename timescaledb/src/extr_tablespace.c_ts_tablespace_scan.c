
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Tablespaces ;
typedef int ScanKeyData ;


 int AccessShareLock ;
 int Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TABLESPACE_DEFAULT_CAPACITY ;
 int TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX ;
 int tablespace_scan_internal (int ,int *,int,int ,int *,int *,int ,int ) ;
 int tablespace_tuple_found ;
 int * tablespaces_alloc (int ) ;

Tablespaces *
ts_tablespace_scan(int32 hypertable_id)
{
 Tablespaces *tspcs = tablespaces_alloc(TABLESPACE_DEFAULT_CAPACITY);
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 tablespace_scan_internal(TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX,
        scankey,
        1,
        tablespace_tuple_found,
        ((void*)0),
        tspcs,
        0,
        AccessShareLock);

 return tspcs;
}
