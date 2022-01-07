
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_4__ {scalar_t__ range_start; scalar_t__ range_end; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef TYPE_2__ DimensionSlice ;


 scalar_t__ REMAP_LAST_COORDINATE (scalar_t__) ;

int
ts_dimension_slice_cmp_coordinate(const DimensionSlice *slice, int64 coord)
{
 coord = REMAP_LAST_COORDINATE(coord);
 if (coord < slice->fd.range_start)
  return -1;

 if (coord >= slice->fd.range_end)
  return 1;

 return 0;
}
