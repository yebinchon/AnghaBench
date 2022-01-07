
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ end; int type; } ;
typedef int SchemaAndName ;
typedef int Name ;
typedef int List ;
typedef TYPE_1__ InternalTimeRange ;


 int Assert (int) ;
 int ERROR ;
 int SPI_OK_CONNECT ;
 int SPI_OK_FINISH ;
 int SPI_connect () ;
 int SPI_finish () ;
 int elog (int ,char*) ;
 int get_invalidation_range (int *,TYPE_1__*) ;
 void* int64_min (scalar_t__,scalar_t__) ;
 int internal_time_range_to_time_range (TYPE_1__) ;
 int ranges_overlap (TYPE_1__,TYPE_1__) ;
 int spi_update_materializations (int ,int ,int ,int ) ;
 int time_bucket_range (TYPE_1__*,int ) ;

void
update_materializations(SchemaAndName partial_view, SchemaAndName materialization_table,
      Name time_column_name, InternalTimeRange new_materialization_range,
      int64 bucket_width, List *invalidations)
{
 InternalTimeRange invalidation_range = {
  .type = new_materialization_range.type,
 };
 InternalTimeRange combined_materialization_range = new_materialization_range;

 bool needs_invalidation = get_invalidation_range(invalidations, &invalidation_range);
 bool materialize_invalidations_separately = needs_invalidation;
 int res = SPI_connect();
 if (res != SPI_OK_CONNECT)
  elog(ERROR, "could not connect to SPI in materializer");



 if (new_materialization_range.start > new_materialization_range.end)
  new_materialization_range.start = new_materialization_range.end;

 if (needs_invalidation)
 {
  Assert(invalidation_range.start <= invalidation_range.end);

  time_bucket_range(&invalidation_range, bucket_width);


  invalidation_range.start =
   int64_min(invalidation_range.start, new_materialization_range.start);
  invalidation_range.end = int64_min(invalidation_range.end, new_materialization_range.end);


  materialize_invalidations_separately =
   !ranges_overlap(invalidation_range, new_materialization_range);

  combined_materialization_range.start =
   int64_min(invalidation_range.start, new_materialization_range.start);
 }
 if (!needs_invalidation || !materialize_invalidations_separately)
 {
  spi_update_materializations(partial_view,
         materialization_table,
         time_column_name,
         internal_time_range_to_time_range(
          combined_materialization_range));
 }
 else
 {
  spi_update_materializations(partial_view,
         materialization_table,
         time_column_name,
         internal_time_range_to_time_range(invalidation_range));

  spi_update_materializations(partial_view,
         materialization_table,
         time_column_name,
         internal_time_range_to_time_range(new_materialization_range));
 }

 res = SPI_finish();
 Assert(res == SPI_OK_FINISH);
 return;
}
