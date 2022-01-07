
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* int64 ;
struct TYPE_5__ {int dimension_id; void* range_end; void* range_start; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_2__ DimensionSlice ;


 TYPE_2__* dimension_slice_alloc () ;

DimensionSlice *
ts_dimension_slice_create(int dimension_id, int64 range_start, int64 range_end)
{
 DimensionSlice *slice = dimension_slice_alloc();

 slice->fd.dimension_id = dimension_id;
 slice->fd.range_start = range_start;
 slice->fd.range_end = range_end;

 return slice;
}
