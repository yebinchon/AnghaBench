
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regproc ;
typedef int int64 ;
typedef int Oid ;
typedef int Name ;
typedef int DimensionInfo ;


 int INT8OID ;
 int Int64GetDatum (int ) ;
 int * ts_dimension_info_create_open (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline DimensionInfo *
ts_dimension_info_create_open_interval_usec(Oid table_relid, Name column_name, int64 interval_usec,
           regproc partitioning_func)
{
 return ts_dimension_info_create_open(table_relid,
           column_name,
           Int64GetDatum(interval_usec),
           INT8OID,
           partitioning_func);
}
