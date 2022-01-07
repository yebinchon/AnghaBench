
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeRange ;
typedef int SchemaAndName ;
typedef int Name ;


 int spi_delete_materializations (int ,int ,int ) ;
 int spi_insert_materializations (int ,int ,int ,int ) ;

__attribute__((used)) static void
spi_update_materializations(SchemaAndName partial_view, SchemaAndName materialization_table,
       Name time_column_name, TimeRange invalidation_range)
{
 spi_delete_materializations(materialization_table, time_column_name, invalidation_range);
 spi_insert_materializations(partial_view,
        materialization_table,
        time_column_name,
        invalidation_range);
}
