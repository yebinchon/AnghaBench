
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_3__ {int space; } ;
typedef int Oid ;
typedef int Interval ;
typedef TYPE_1__ Hypertable ;
typedef int Dimension ;


 int Assert (int ) ;
 int * DEFAULT_SCHEDULE_INTERVAL ;
 int * DatumGetIntervalP (int ) ;
 int DirectFunctionCall7 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int Float8GetDatum (int) ;
 scalar_t__ IS_TIMESTAMP_TYPE (int ) ;
 int Int32GetDatum (int ) ;
 int USECS_PER_SEC ;
 int * hyperspace_get_open_dimension (int ,int ) ;
 int make_interval ;
 int ts_dimension_get_partition_type (int *) ;
 TYPE_1__* ts_hypertable_get_by_id (int ) ;

__attribute__((used)) static Interval *
continuous_agg_job_get_default_schedule_interval(int32 raw_table_id, int64 bucket_width)
{
 Dimension *dim;
 Interval *default_schedule_interval = DEFAULT_SCHEDULE_INTERVAL;
 Hypertable *ht = ts_hypertable_get_by_id(raw_table_id);
 Oid partition_type;

 Assert(ht != ((void*)0));





 dim = hyperspace_get_open_dimension(ht->space, 0);

 partition_type = ts_dimension_get_partition_type(dim);
 if (dim != ((void*)0) && IS_TIMESTAMP_TYPE(partition_type))
 {
  default_schedule_interval = DatumGetIntervalP(
   DirectFunctionCall7(make_interval,
        Int32GetDatum(0),
        Int32GetDatum(0),
        Int32GetDatum(0),
        Int32GetDatum(0),
        Int32GetDatum(0),
        Int32GetDatum(0),
        Float8GetDatum((bucket_width * 2) / USECS_PER_SEC)));
 }

 return default_schedule_interval;
}
